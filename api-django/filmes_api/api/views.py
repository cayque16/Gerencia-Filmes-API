from django.shortcuts import render
from api.models import Filmes,Anometa,Filmesassistidos
from django.http.response import JsonResponse

# Create your views here.

def lista_filmes(request):
    filmes = Filmes.objects.all().values('id','imdbid','titulo')
    return JsonResponse(list(filmes),safe=False)

def lista_filmes_user_do_ano(request,ano):
    # usuario = request.user
    ano_meta = Anometa.objects.get(ano=ano)
    filmes_assistidos = Filmesassistidos.objects.filter(idanometa=ano_meta.id).order_by('-posano')
    result = []
    for i in filmes_assistidos:
        filme = i.idfilme
        # print(i.idfilme)
        dados = {}
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
    return JsonResponse(result,safe=False)

def lista_anosmeta(request):
    ano_meta = Anometa.objects.all().order_by('-ano')
    result = []
    for i in ano_meta:
        dados = {}
        dados['id'] = i.id
        dados['ano'] = i.ano
        dados['meta'] = i.meta
        result.append(dados)
    return JsonResponse(result,safe=False)

def get_anometa(request,ano):
    dados = {}
    try:
        ano_meta = Anometa.objects.get(ano=ano)
    except Exception:
        return JsonResponse(dados)    
    dados['id'] = ano_meta.id
    dados['ano'] = ano_meta.ano
    dados['meta'] = ano_meta.meta
    return JsonResponse(dados)

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
    return JsonResponse(dados)