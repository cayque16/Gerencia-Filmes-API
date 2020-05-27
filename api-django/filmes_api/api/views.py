from django.shortcuts import render
from api.models import Filmes,Anometa,Filmesassistidos
from django.http.response import JsonResponse

# Create your views here.

def lista_filmes(request):
    filmes = Filmes.objects.all().values('id','imdbid','titulo')
    return JsonResponse(list(filmes),safe=False)

def lista_filmes_user_do_ano(request,ano):
    usuario = request.user
    ano_meta = Anometa.objects.get(ano=ano,usuario=usuario)
    filmes_assistidos = Filmesassistidos.objects.filter(usuario=usuario,idanometa=ano_meta.id).values('idfilme')
    result = []
    for i in filmes_assistidos:
        filme = {}
        filme['id'] = Filmes.objects.get(id=i['idfilme']).id
        filme['titulo'] = Filmes.objects.get(id=i['idfilme']).titulo
        result.append(filme)
    return JsonResponse(result,safe=False)