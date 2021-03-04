#@Autor: Herrera Gandarela Gabriel Alejandro
#@Fecha creacion: 19/10/2020
#@Descripcion: Creando loop devices

#!/bin/bash
echo "Creando directorio"
mkdir /unam-bda
cd /unam-bda
echo "Creando los loop devices"
dd if=/dev/zero of=disk2.img bs=100M count=10
dd if=/dev/zero of=disk3.img bs=100M count=10
echo "Verificando la creacion de los disk"
du -sh disk*.img
echo "Creando loop devices"
losetup -fP disk2.img
losetup -fP disk3.img
echo "Verificando la creacion de los loop"
losetup -a
echo "Dando formato ext4 a los archivos"
mkfs.ext4 disk2.img
mkfs.ext4 disk3.img
echo "Creando directorio u02"
mkdir /u02
echo "Creando directorio u03"
mkdir /u03