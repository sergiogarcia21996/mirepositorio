#!/bin/bash

APACHE=$(ps -aux| grep 'apache2' | grep -v grep | grep -v systemctl | wc -l)

#Verificar que el servicio apache2 esté activo
while ( true )
do
echo "###############################################################"
echo "###############################################################"
if [ $APACHE == 0 ];
then
#Se reinicia el servicio apache 2
systemctl start apache2
echo "El servicio se ha reactivado debido a que se había inhabilitado"
systemctl status apache2

else
echo "El servicio apache2 está operando de manera normal"
systemctl status apache2
fi
echo "################################################################"
sleep 30 
done
