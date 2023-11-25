from django.urls import path 
from . import views

urlpatterns = [
    path('', views.inventario, name='inventario'),
    path('oficinas/<int:bloqueid>', views.oficinas, name='oficinas'),
    path('articulos_oficina/<int:oficina_id>', views.articulos_oficina, name='oficinas'),
    path('agregar_articulo/<int:oficina_id>/<int:articulo_id>', views.agregar_articulo, name='Articulos'),
    path('eliminar_articulo/<int:articulo_id>', views.eliminar_articulo, name='Articulos'),
]
