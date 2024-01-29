from django.urls import path
from . views import *

urlpatterns = [
    path('', inicio, name='inicio'),
    path('filtrar-municipios/', filtrar_municipios, name='filtrar_municipios'),
    path('filtrar-zonas/', filtrar_zonas, name='filtrar_zonas'),

]
