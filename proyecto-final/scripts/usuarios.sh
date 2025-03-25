#!/bin/bash

#Este script es para gestionar usuarios y permisos


#Crear usuarios
sudo useradd admin1 tecnico1 auditor1

#Crear grupos
sudo groupadd administracion tecnicos

#Unir usuarios a grupos
sudo usermod --append -G administracion admin1
sudo usermod --append -G tecnicos tecnico1

#Crear directorios
sudo mkdir -p /tmp/empresa/admin /tmp/empresa/tecnicos /tmp/empresa/compartido



