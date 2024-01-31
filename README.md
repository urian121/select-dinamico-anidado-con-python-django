### Select Multiple Dinamico con Python y Django

##### El proyecto utilizará Python y Django para crear un sistema de filtrado que permitirá a los usuarios seleccionar departamentos y municipios de Colombia, así como zonas de interés dentro de cada municipio. Usando una interfaz amigable, los usuarios podrán explorar y encontrar información relevante sobre diferentes áreas geográficas del país de manera eficiente y rápida.

1.  Crear un entorno virtual, hay muchas formas

        Opción 1: Crear entorno virtual con el paquete virtualenv
        Si no tienes instalado virtualenv puedes instalarlo de forma global en el sistema atraves de https://pypi.org/project/virtualenv/
        pip install virtualenv ->Instalar de forma global
        virtualenv env ->Crear entorno
        virtualenv --version ->Ver la versión de virtualenv

        Opción 2: Crear un entorno virtual con el paquete que ya viene por defecto en las ultimas versiones de Python
        python -m venv env

2.  Activar entorno virtual

        . env/Script/activate ->para Windows
        . env/bin/activate -> Para Mac
        deactivate -->Para desactivar mi entorno virtual

3.  Instalar django desde el manejador de paquete de Python Pip, ya dentro del entorno virtual.

        pip install Django
        Nota: para instalar Django en una version especifica
        pip install Django==4.2.4

4.  Instalar Driver para conectar Gestor de BD MySQL con Django, con el fin de crear una tabla para almacenar los idiomas disponibles

        pip install mysqlclient

5.  Crear el proyecto con django

        `django-admin startproject project_core .`
        El punto . es crucial le dice al script que instale Django en el directorio actual

        Ya en este punto se puede correr el proyecto que a creado Django,
        python manage.py runserver

6.  Crear mi primera aplicación en Django

        python manage.py startapp select_dinamico

7.  Instalar nuestra aplicación (select_dinamico) ya creada en el proyecto, en el archivo settings.py

        archivo settings.py
        INSTALLED_APPS = [
        ----,
        'select_dinamico',
        ]

8.  Crear las migraciones y correrlas

        python manage.py makemigrations -> Creando migraciones
        python manage.py migrate         -> Correr migraciones

9.  Correr el proyecto

        python manage.py runserver
        Revisar la consola y visitar la URL http://127.0.0.1:8000

10. Crear el archivo urls.py en la aplicación (traductor)

        from django.urls import path
        from . import views

                urlpatterns = [
                        path('', inicio, name='inicio'),
                        path('filtrar-municipios/', filtrar_municipios, name='filtrar_municipios'),
                        path('filtrar-zonas/', filtrar_zonas, name='filtrar_zonas'),
                ]

11. Conectar las URLS de mi aplicación con el projecto, para esto vamos al archivo uls.py del projecto
    from django.urls import path, include

        urlpatterns = [
                path('admin/', admin.site.urls),
                path('', include('select_dinamico.urls')),
        ]

12. Crear la carpeta 'templates' dentro de la aplicación donde estarán mis index.html

13. Crear la carpeta 'static' dentro de mi aplicacion, aqui estaran archivos
    estaticos (css, js, imagenes, etc..)

14. Correr archivo requirement.txt para instalar todas las dependencias del proyecto

        pip install -r requirements.txt

15. Correr aplicación en un puerto en especifico

        python manage.py runserver 0:8080

#### Resultado final

![](https://raw.githubusercontent.com/urian121/imagenes-proyectos-github/master/select-multiple-dinamico-con-python.png)

### Expresiones de Gratitud 🎁

    Comenta a otros sobre este proyecto 📢
    Invita una cerveza 🍺 o un café ☕
    Paypal iamdeveloper86@gmail.com
    Da las gracias públicamente 🤓.

## No olvides SUSCRIBIRTE 👍
