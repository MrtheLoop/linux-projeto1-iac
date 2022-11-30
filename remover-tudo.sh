#!/bin/bash
echo 'Removendo usuários dos grupos...'

gpasswd GRP_ADM
gpasswd GRP_VEN
gpasswd GRP_SEC

echo 'Apagando Usuários, Configurações e Pastas...'

userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio

echo 'Remover pastas...'

rm -r -f /Publico
rm -r -f /adm
rm -r -f /ven
rm -r -f /sec


echo 'Apagando grupos...'


groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo 'Finalizando Script...'
