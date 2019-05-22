#!/bin/bash
FECHA=$(date +"%d%m%Y%T")
mkdir /home/backups

tar -cpvzf /home/backups/Backup$FECHA.tar.gz /home/sergiogarcia/.
echo "Backup$FECHA realizado"
exit
