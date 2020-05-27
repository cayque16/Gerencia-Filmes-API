# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.contrib.auth.models import User


class Anometa(models.Model):
    id = models.PositiveIntegerField(primary_key=True)
    usuario = models.ForeignKey(User,on_delete=models.CASCADE)
    ano = models.PositiveIntegerField()
    meta = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'AnoMeta'


class Filmes(models.Model):
    imdbid = models.CharField(db_column='imdbID', max_length=45)  # Field name made lowercase.
    titulo = models.CharField(max_length=100)
    ano = models.IntegerField(blank=True, null=True)
    duracao = models.IntegerField(blank=True, null=True)
    nota = models.DecimalField(max_digits=10, decimal_places=1, blank=True, null=True)
    poster = models.CharField(max_length=300, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'Filmes'


class Filmesassistidos(models.Model):
    idfilme = models.ForeignKey(Filmes, models.DO_NOTHING, db_column='idFilme', blank=True, null=True)  # Field name made lowercase.
    usuario = models.ForeignKey(User,on_delete=models.CASCADE)
    idanometa = models.ForeignKey(Anometa, models.DO_NOTHING, db_column='idAnoMeta')  # Field name made lowercase.
    posano = models.IntegerField(db_column='posAno')  # Field name made lowercase.
    data = models.DateTimeField(blank=True, null=True)
    inedito = models.IntegerField()

    class Meta:
        managed = True
        db_table = 'FilmesAssistidos'
