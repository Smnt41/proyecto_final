#!/bin/bash

# Función para mostrar el menú
menu() {
    echo " Menú Principal"
    echo "1. Crear estructura de usuarios y permisos"
    echo "2. Generar y analizar logs"
    echo "3. Crear backup de directorios críticos"
    echo "4. Mostrar espacio disponible en disco"
    echo "5. Limpiar archivos temporales viejos"
    echo "6. Salir"
    echo -n "Seleccione una opción [1-6]: "
}

#Crear estructura de usuarios y permisos
script_usuarios() {
    /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/scripts/usuarios.sh
    
}

#Generar y analizar logs
script_logs() {
    /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/scripts/logs.sh
    
}

# Función para crear un backup simulado
crear_backup() {
    echo "Creando backup simulado de directorios críticos..."
    # Simulando un backup
    echo "Backup completado."
}

#Mostrar espacio disponible en disco
mostrar_espacio_disco() {
    echo "Espacio disponible en disco:"
    df -h
}

#Limpiar archivos temporales viejos
limpiar_archivos() {
    rm -rf /tmp/*
    echo "Archivos temporales eliminados"
}

# Menú interactivo
while true; do
    mostrar_menu
    read opcion
    case $opcion in
        1)
            script_usuarios
            ;;
        2)
            script_logs
            ;;
        3)
            crear_backup
            ;;
        4)
            mostrar_espacio_disco
            ;;
        5)
            limpiar_archivos
            ;;
        6)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opción no válida, por favor elija una opción entre 1 y 6."
            ;;
    esac
done
