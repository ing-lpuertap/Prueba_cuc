from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
from django.core.serializers import serialize
import json
from .models import Bloque,Oficina,Articulo
# Create your views here.

def inventario(request):
    bloque= Bloque.objects.all() 
    articulo= Articulo.objects.all()  
    
    return render(request, 'paginas/inventario.html', {'bloques':bloque,'articulos':articulo})

def oficinas(request,bloqueid):
    oficina= Oficina.objects.filter(bloque_id=bloqueid)   
    serialized_data = serialize("json", oficina)
    serialized_data = json.loads(serialized_data)
   
    
    return JsonResponse(serialized_data,safe=False)
def articulos_oficina(request,oficina_id):
    articulo= Articulo.objects.filter(oficina_id=oficina_id)   
    serialized_data = serialize("json", articulo)
    serialized_data = json.loads(serialized_data)
   
    
    return JsonResponse(serialized_data,safe=False)


def agregar_articulo(request,oficina_id,articulo_id):
    articulo= Articulo.objects.get(id=articulo_id) 
    articulo.oficina_id=  oficina_id
    articulo.save()
     
    articulo= Articulo.objects.filter(oficina_id=oficina_id)       
    serialized_data = serialize("json", articulo)
    serialized_data = json.loads(serialized_data)
   
    
    return JsonResponse(serialized_data,safe=False)

def eliminar_articulo(request,articulo_id):
    articulo= Articulo.objects.get(id=articulo_id) 
    oficina_id=articulo.oficina_id
    articulo.oficina_id= None
    articulo.save()
     
    articulo= Articulo.objects.filter(oficina_id=oficina_id)       
    serialized_data = serialize("json", articulo)
    serialized_data = json.loads(serialized_data)
   
    
    return JsonResponse(serialized_data,safe=False)
