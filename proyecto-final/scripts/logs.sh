#!/bin/bash
#Dar permiso ejecucion a logs.sh
sudo chmod +x /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/scripts/logs.sh

#Crear archivo eventos.log

cat > /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/logs/eventos.log << EOF
2025-04-01 08:00:01 [INFO] El sistema ha arrancado correctamente.
2025-04-01 08:05:13 [INFO] Usuario 'admin' ha iniciado sesión correctamente desde la IP 192.168.1.10.
2025-04-01 08:10:45 [INFO] El servicio SSH ha comenzado a ejecutarse.
2025-04-01 08:15:23 [INFO] Usuario 'admin' ha iniciado sesión correctamente desde la IP 192.168.1.10.
2025-04-01 08:17:45 [INFO] El sistema ha comenzado el proceso de respaldo (backup) de los datos a la carpeta /backups.
2025-04-01 08:30:12 [WARNING] El disco en /dev/sda1 está a un 90% de su capacidad. Verifique el espacio disponible.
2025-04-01 08:45:01 [ERROR] No se pudo conectar a la base de datos MySQL. Error: 'Connection timed out'.
2025-04-01 08:50:30 [INFO] El servicio de base de datos MySQL ha sido reiniciado correctamente.
2025-04-01 09:00:00 [INFO] Respaldo completado con éxito. 120GB copiados a /backups/datos_20250401.tar.gz.
2025-04-01 09:15:30 [WARNING] El servicio Apache ha tardado más de 5 segundos en responder a la solicitud desde la IP 192.168.1.15.
2025-04-01 09:45:10 [ERROR] El archivo de configuración /etc/nginx/nginx.conf tiene un error de sintaxis. No se pudo recargar el servicio.
2025-04-01 10:00:00 [INFO] Usuario 'admin' ha iniciado sesión correctamente desde la IP 192.168.1.20.
2025-04-01 10:20:33 [ERROR] No se pudo realizar el backup programado. Error: 'Permission denied' en el directorio /backups.
2025-04-01 10:45:00 [WARNING] La carga del CPU ha alcanzado el 95%. Considera revisar los procesos activos.
2025-04-01 11:00:00 [INFO] El sistema ha finalizado el proceso de mantenimiento semanal sin errores.
2025-04-01 11:10:21 [INFO] El sistema ha detectado una actualización de seguridad para el paquete 'openssl'. Iniciando actualización.
2025-04-01 11:30:05 [INFO] La actualización del paquete 'openssl' se completó correctamente.
2025-04-01 11:45:50 [ERROR] El servicio de correo electrónico no pudo enviar el correo a 'user@example.com'. Error: 'Timeout'.
2025-04-01 12:00:00 [INFO] El usuario 'samantha' ha iniciado sesión correctamente desde la IP 192.168.1.30.
2025-04-01 12:15:45 [ERROR] El servicio de red no pudo resolver la dirección IP 'www.ejemplo.com'. Error: 'DNS Resolution Failure'.
2025-04-01 12:45:00 [INFO] Se ha realizado una nueva conexión SSH desde la IP 192.168.1.25.
2025-04-01 13:00:00 [BACKUP] El sistema ha comenzado un nuevo proceso de backup completo.
2025-04-01 13:05:30 [BACKUP] Respaldo completo realizado a la carpeta /backups/datos_completos_20250401.tar.gz.
2025-04-01 13:30:10 [INFO] Se ha iniciado una actualización del software del servidor web 'nginx'.
2025-04-01 14:00:00 [INFO] La actualización del servidor web 'nginx' se completó correctamente.
2025-04-01 14:20:35 [WARNING] El servicio FTP ha estado inactivo por más de 10 minutos.
2025-04-01 14:45:10 [ERROR] El archivo /var/log/apache2/error.log está creciendo a un ritmo inesperadamente rápido. Verifique los registros.
2025-04-01 15:00:00 [INFO] El sistema ha realizado una limpieza de archivos temporales en /tmp.
2025-04-01 15:15:20 [INFO] Usuario 'admin' ha cerrado sesión correctamente.
2025-04-01 15:45:55 [INFO] El servicio DNS ha sido reiniciado correctamente después de la actualización.
2025-04-01 16:00:00 [INFO] El sistema ha detectado que el servicio de autenticación de LDAP se ha restaurado.
2025-04-01 16:30:10 [ERROR] El proceso 'httpd' ha fallado al intentar reiniciar. Código de error 127.
2025-04-01 17:00:00 [INFO] El servicio MySQL se ha detenido correctamente.
EOF

#Buscar número de errores en el log
echo "Número de errores: "
sudo grep -c -i "error" /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/logs/eventos.log

#Buscar últimos 5 errores
echo "Últimos 5 errores: "
sudo grep -i "error" /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/logs/eventos.log | tail -n 5

#Ver mensajes más frecuentes
echo "Mensajes más frecuentes: "
sudo cut -d ' ' /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/logs/eventos.log -f3 | sort | uniq -c | sort -nr

#Ver usuarios con mayor actividad
echo "Usuarios con mayor actividad: "
sudo grep -oiP "usuario '\K\w+" /mnt/c/Users/Admin/Desktop/proyecto_final/proyecto-final/logs/eventos.log | sort | uniq -c | head -n 1

#Mensaje para indicar que el script ha acabado
echo "El script de análisis del log ha finalizado"
