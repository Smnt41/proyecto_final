#!/bin/bash

#Este script es para gestionar usuarios y permisos


#Crear usuarios
sudo useradd admin1 tecnico1 auditor1

#Crear grupos
sudo groupadd administracion tecnicos

#Unir usuarios a grupos
sudo usermod -aG administracion admin1
sudo usermod -aG tecnicos tecnico1

#Crear directorios
sudo mkdir -p /tmp/empresa/admin /tmp/empresa/tecnicos /tmp/empresa/compartido

#Aplicar permisos

#setUID
sudo chmod u+s /tmp/empresa/admin

#setGID
sudo chmod g+s /tmp/empresa/tecnicos

#StickyBit
sudo chmod +t /tmp/empresa/compartido

#Setfacl permisos auditor1
sudo setfacl -m u:auditor1:rwx /tmp/empresa/tecnicos

#Mensaje final para saber si se ha ejecutado el script
print("Script para gestión de usuarios finalizado")

