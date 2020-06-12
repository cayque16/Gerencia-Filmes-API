"""filmes_api URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.views.decorators.csrf import csrf_exempt
from rest_framework_jwt.views import obtain_jwt_token,refresh_jwt_token
from api import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('filmes/api/filmes/', views.lista_filmes),
    path('filmes/api/filmes/<int:ano>', views.lista_filmes_user_do_ano),
    path('filmes/api/filmes/getfilme/<int:id>', views.get_filme),
    path('filmes/api/filmesassistido/post/', csrf_exempt(views.set_filme_assistido)),
    path('filmes/api/anosmeta/', views.lista_anosmeta),
    path('filmes/api/anosmeta/put/', csrf_exempt(views.altera_ano_meta)),
    path('filmes/api/anosmeta/<int:ano>', views.get_anometa),
    path('filmes/api/token/', obtain_jwt_token),
    path('filmes/api/refresh-token/', obtain_jwt_token),
]
