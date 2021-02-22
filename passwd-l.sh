#!/bin/bash

read -p "Digite um nome de usuário para bloquear a senha: " USER
echo "Guardando usuário: $USER"

passwd -l $USER #bloqueia a senha do usuário.
