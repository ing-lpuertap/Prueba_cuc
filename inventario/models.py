from typing import Any
from django.db import models
from django.core import serializers

# Create your models here.

class Bloque(models.Model):
    id= models.IntegerField(primary_key=True)
    nombre= models.CharField(max_length=100, verbose_name='nombre',null=True)
    class Meta:
        db_table='bloques'
    
class Oficina(models.Model):
    id= models.IntegerField(primary_key=True,verbose_name='id')
    nom_oficina= models.CharField(max_length=100, verbose_name='nom_oficina',null=True)
    bloque_id= models.IntegerField(verbose_name='bloque_id') 
    class Meta:
        db_table='oficinas'
        
        
class Articulo(models.Model):
    # id  serial        fecha_ingreso  fecha_garantia  marca       modelo            tipo                  oficina_id
    id= models.IntegerField(primary_key=True)
    serial= models.CharField(max_length=100, verbose_name='serial',null=True)
    fecha_ingreso= models.CharField(max_length=100, verbose_name='fecha_ingreso',null=True)
    fecha_garantia= models.CharField(max_length=100, verbose_name='fecha_garantia',null=True)
    marca= models.CharField(max_length=100, verbose_name='marca',null=True)
    modelo= models.CharField(max_length=100, verbose_name='modelo',null=True)
    tipo= models.CharField(max_length=100, verbose_name='tipo',null=True)
    oficina_id= models.CharField(max_length=100, verbose_name='oficina_id',null=True)
    class Meta:
        db_table='articulos'
    
    
    
   