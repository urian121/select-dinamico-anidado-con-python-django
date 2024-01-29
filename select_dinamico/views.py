from django.shortcuts import render
from django.http import JsonResponse
import json
from . models import Municipio, Departamento, Zona


# Mis vistas
def inicio(request):
    data = {
        "departamentos": departamentos(request),
    }
    return render(request, 'index.html', data)


def departamentos(request):
    return Departamento.objects.all().order_by('departamento')


def filtrar_municipios(request):
    try:
        if request.method == 'POST':
            data = json.loads(request.body)
            departamentoId = data.get('idDepartamento')
            dataBD = list(Municipio.objects.filter(
                departamento_id=departamentoId).values())

            return JsonResponse({'status': 200, 'data': dataBD})
        else:
            return JsonResponse({'error': 'Método no permitido'}, status=405)
    except Exception as e:
        return JsonResponse({'error': str(e)}, status=400)


def filtrar_zonas(request):
    try:
        if request.method == 'POST':
            data = json.loads(request.body)
            municipioId = data.get('idMunicipio')
            dataBD = list(Zona.objects.filter(
                municipio_id=municipioId).values('id_zona', 'zona'))

            return JsonResponse({'status': 200, 'data': dataBD})
        else:
            return JsonResponse({'error': 'Método no permitido'}, status=405)
    except Exception as e:
        return JsonResponse({'error': str(e)}, status=400)
