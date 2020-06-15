from django.shortcuts import render
from api.models import Filmes,Anometa,Filmesassistidos
from django.http.response import JsonResponse
from django.db.models import Max
from django.contrib.auth.models import User
from rest_framework.decorators import api_view, permission_classes,authentication_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.authentication import SessionAuthentication, BasicAuthentication
from rest_framework import status
from django.core.exceptions import ObjectDoesNotExist
import json
from datetime import datetime

# Create your views here.

def lista_filmes(request):
    filmes = Filmes.objects.all().values('id','imdbid','titulo')
    return JsonResponse(list(filmes),safe=False)

@api_view(['GET'])
def lista_filmes_user_do_ano(request,ano):
    usuario = request.user
    ano_meta = Anometa.objects.get(ano=ano,usuario=usuario)
    filmes_assistidos = Filmesassistidos.objects.filter(
            idanometa=ano_meta.id,
            usuario=usuario
        ).order_by('-posano')
    result = []
    for i in filmes_assistidos:
        filme = i.idfilme
        dados = {}
        dados['id'] = i.id
        dados['idFilme'] = filme.id
        dados['posano'] = i.posano
        dados['titulo'] = filme.titulo
        dados['ano'] = filme.ano
        dados['duracao'] = filme.duracao
        dados['nota'] = filme.nota
        dados['poster'] = filme.poster
        dados['dataDia'] = i.get_data_dia()
        dados['dataMes'] = i.get_data_mes()
        dados['dataAno'] = i.get_data_ano()
        dados['inedito'] = i.inedito
        result.append(dados)
    return JsonResponse(result,safe=False,status=status.HTTP_200_OK)

@api_view(['GET'])
def lista_anosmeta(request):
    usuario = request.user
    ano_meta = Anometa.objects.filter(usuario=usuario).order_by('-ano')
    result = []
    for i in ano_meta:
        dados = {}
        dados['id'] = i.id
        dados['ano'] = i.ano
        dados['meta'] = i.meta
        result.append(dados)
    return JsonResponse(result,safe=False,status=status.HTTP_200_OK)

@api_view(['GET'])
def get_anometa(request,ano):
    dados = {}
    usuario = request.user
    try:
        ano_meta = Anometa.objects.get(ano=ano,usuario=usuario)
    except Exception:
        Anometa.objects.create(
            usuario = usuario,
            ano = ano,
            meta = 100
        )
        ano_meta = Anometa.objects.get(ano=ano,usuario=usuario)
    dados['id'] = ano_meta.id
    dados['ano'] = ano_meta.ano
    dados['meta'] = ano_meta.meta
    return JsonResponse(dados,status=status.HTTP_200_OK)

@api_view(['GET'])
def get_filme(request,id):
    dados = {}
    try:
        filme = Filmes.objects.get(id=id)
    except Exception:
        return JsonResponse(dados)
    dados['imdbid'] = filme.imdbid
    dados['titulo'] = filme.titulo
    dados['ano'] = filme.ano
    dados['duracao'] = filme.duracao
    dados['nota'] = filme.nota
    dados['poster'] = filme.poster
    return JsonResponse(dados,status=status.HTTP_200_OK)

@api_view(['PUT'])
def altera_ano_meta(request):
    user = request.user
    body = json.loads(request.body)
    try:
        anoMeta = Anometa.objects.get(ano=body['ano'],usuario=user)
        anoMeta.meta = body['meta']
        anoMeta.save()
    except ObjectDoesNotExist:
        return JsonResponse({'erro': 'Ano meta não encontrado'},status=status.HTTP_404_NOT_FOUND)    
    
    return JsonResponse({},status=status.HTTP_200_OK)

@api_view(['POST'])
def set_filme_assistido(request):
    user = request.user
    body = json.loads(request.body)
    if body['id'] == 0:
        try:
            filme = Filmes.objects.get(imdbid=body['imdbId'])
        except Exception:
            Filmes.objects.create(
                imdbid = body['imdbId'],
                titulo = body['titulo'],
                ano = body['ano'],
                duracao = body['duracao'],
                nota = body['nota'],
                poster = body['poster']
            )
            filme = Filmes.objects.get(imdbid=body['imdbId'])
        ano = body['data'].split('/')[2]
        anoMeta = Anometa.objects.get(ano=ano,usuario=user)
        maxPosDoAno = Filmesassistidos.objects.filter(idanometa=anoMeta,usuario=user).aggregate(Max('posano'))
        if (maxPosDoAno['posano__max'] != None):
            posAno = maxPosDoAno['posano__max'] + 1
        else:
            posAno = 1
        Filmesassistidos.objects.create(
            idfilme = filme,
            usuario = user,
            idanometa = anoMeta,
            posano = posAno,
            data = datetime.strptime(body['data'], '%d/%m/%Y').date(),
            inedito = body['inedito']
        )
    else:
        filmeAssistido = Filmesassistidos.objects.get(id=body['id'])
        filmeAssistido.inedito = body['inedito']
        filmeAssistido.data = datetime.strptime(body['data'], '%d/%m/%Y').date()
        filmeAssistido.save()

    return JsonResponse({},status=status.HTTP_201_CREATED)