#!/bin/bash

GENWEB_FOLDER=/var/plone/genwebupc/produccio
echo Executant-se a les `date +%Y%m%d.%H%M` >> /var/plone/genwebupc/afegeixInstancia.log

echo "Actualitzant les instancies dels frontends"
echo "a l'entorn obert actualment: Entorn 11..."

echo "Regenerant Buildout..."
cd $GENWEB_FOLDER
$GENWEB_FOLDER/bin/buildout -o

#chown -R plone $GENWEB_FOLDER

echo "Reiniciant frontend zc11"
$GENWEB_FOLDER/bin/zc11 stop
$GENWEB_FOLDER/bin/zc11 start
