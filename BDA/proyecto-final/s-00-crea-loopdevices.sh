#@Autor: Flores García Karina y Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 06/02/2021
#@Descripcion: Creando loop devices

#!/bin/bash
echo "Creando directorio"
mkdir /unam-proy
cd /unam-proy
echo "Creando los loop devices"
dd if=/dev/zero of=disk1.img bs=100M count=10
dd if=/dev/zero of=disk2.img bs=100M count=10
dd if=/dev/zero of=disk3.img bs=100M count=10
echo "Verificando la creacion de los disk"
du -sh disk*.img
echo "Creando loop devices"
losetup -fP disk1.img
losetup -fP disk2.img
losetup -fP disk3.img
echo "Verificando la creacion de los loop"
losetup -a
echo "Dando formato ext4 a los archivos"
mkfs.ext4 disk1.img
mkfs.ext4 disk2.img
mkfs.ext4 disk3.img
echo "Creando directorio disk_1"
mkdir /disk_1
echo "Creando directorio disk_2"
mkdir /disk_2
echo "Creando directorio disk_3"
mkdir /disk_3

#Agregar cambios a /etc/fstab
#Verificar espacio de cada loopdevices