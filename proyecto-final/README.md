# Proyecto Final: Automatización de Tareas Administrativas

Este proyecto tiene como objetivo la automatización de varias tareas administrativas en un entorno de servidor Linux, a través de un menú interactivo que permite ejecutar diferentes acciones relacionadas con la gestión de usuarios, análisis de logs, respaldos de datos y limpieza de archivos temporales.

## Estructura del Proyecto
```
La estructura del proyecto es la siguiente:
proyecto-final/
├── scripts/               # Contiene los scripts para las distintas tareas
│   ├── usuarios.sh        # Script para gestionar usuarios y permisos
│   └── logs.sh            # Script para gestionar y analizar logs
├── logs/                  # Carpeta para almacenar los archivos de log generados
├── respaldo/              # Carpeta para almacenar los respaldos de datos críticos
├── usuarios/              # Carpeta para almacenar los usuarios del sistema
├── README.md              # Este archivo de documentación
└── main.sh                # Script con el menú interactivo
```


## Funcionalidades
Se crea una carpeta para el proyecto llamada proyecto-final. Dentro de esta carpeta se encuentran las subcarpetas: scripts, logs, respaldo y usuarios el archivo README.md y el script main.sh.
Se realiza un script "main.sh" para automatizar diferentes tareas:
- 1)Gestión de usuarios y permisos: Esta opción llama al script usuarios.sh de la carpeta scripts
- 2)Generar y analizar logs: Esta opción llama al script logs.sh de la carpeta scripts
- 3)Crear backup de directorios críticos: Esta opción copia el directorio /home/samantha/datos_criticos_backup a la carpeta de proyecto-final llamada respaldos.
- 4)Mostrar espacio disponible en disco: Esta opción ejecuta el comando df -h
- 5)Limpiar archivos temporales viejos: Esta opción elimina los archivos del directorio /temp
- 6)Salir: Esta opción te permite salir del menú.

### Descripción de las carpetas y archivos:
Scripts
Dentro de esta carpeta se guardan todos los scripts, a excepción de "main.sh". A todos los scripts se les da permisos de ejecución con el comando sudo chmod +x ruta_archivo

Script usuarios.sh
Crea usuarios con el comando sudo useradd nombre_usuario
Crea grupos con el comando sudo groupadd nombre_grupo
Añade usuarios a grupos con el comando sudo usermod -aG nombre_grupo nombre_usuario
Crea directorios con mkdir nombre_directorio
Aplica permisos con chmod

Script logs.sh
Crea un archivo eventos.log con el comando cat
Recoge eventos importantes utilizando comandos como grep, cut, sort...

Script main.sh 
Contiene el menú interactivo y las funciones necesarias para que éste funcione.

Respaldo
En esta carpeta se guardarán los backups

Logs
En esta carpeta se guardaran los logs.

Cómo ejecutarlo
Todas las funciones se ejecutan a través del menú interactivo, seleccionando en cada caso el número apropiado a cada opción.

Nota: En caso de que no te funcionen los scripts, puede que sea por las rutas, así que tendrás que adaptarlas a la de tu estructura de directorios.