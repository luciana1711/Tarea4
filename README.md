# Automatizando despliegue de HAProxy con Vagrant
Este proyecto presenta el despliegue de un HAProxy con dos maquinas virtuales de diferente SO que conforma el cluster para el balanceo de carga. Las maquinas y el servicio suben y queda funcional al ejecutar el comando vagrant up

Se definen tres maquinas virtuales:
 ha con ubuntu/xenial64
 web_1 con ubuntu/xenial64
 web_2 con ubuntu/bionic64  

Este repositorio tiene los siguientes archivos:
* [Vagrantfile](Vagrantfile) Archivo que permite despliegue de HAProxy  
* [install-apache.sh](install-apache.sh) script de intalacion de apache
* [www_1](www_1) Directorio en el host donde se encuentran los archivos web disponibles del servidor web_1 con su respectivo archivo HTML
* [www_2](www_2) Directorio en el host donde se encuentran los archivos web disponibles del servidor web_1 con su respectivo archivo HTML
* [movefile.sh](movefile.sh) Script que hace una copia del archivo original haproxy.cfg y lo renombra, luego mueve el archivo haproxy.cfg del directorio tmp/ha a la ruta /etc/haproxy y luego reinicia el servicio.
* [ha](ha) Directorio que contiene el archivo haproxy.cfg
