#!/bin/bash

#Designed by NRP-Sc0rp10n
#Telegram and credits @nrp_scorpion

if [[ $EUID -ne 0 ]]; then
   echo -e "\nThis script must be run as root, use sudo "$0" instead\n" 1>&2
   exit 1
fi

#Reseta o terminal
tput reset

DATAINICIO=$(date +%d-%m-%Y)
HORAINICIO=$(date +%H:%M:%S)
KERNELANTIGO=$(uname -a)
VERSAOANTIGA=$(grep VERSION /etc/os-release)

echo -e "===============================\n==== ATUALIZANDO O SISTEMA ====\n===============================\n"

sudo apt autoclean -y && apt autoremove -y && apt clean -y
sudo apt update -y && sudo apt dist-upgrade -y && sudo apt full-upgrade -y

echo -e "\n================================\n====== REMOVENDO ARQUIVOS ======\n================================"
echo -e "\n================================\n======== LIMPANDO CACHE ========\n================================\n"

sudo apt clean && sudo apt autoclean -y && sudo apt autoremove -y
echo

KERNEL=$(uname -a)
VERSAO=$(grep VERSION /etc/os-release)

clear

echo -e "======== KERNEL ANTIGO ========"
echo -e "$KERNELANTIGO"
echo -e "\n====== KERNEL ATUALIZADO ======"
echo -e "$KERNEL"
echo -e "\n===== VERSAO ANTIGA ====="
echo -e "$VERSAOANTIGA"
echo -e "\n===== NOVA VERSAO ====="
echo -e "$VERSAO\n"

DATAFINAL=$(date +%d-%m-%Y)
HORAFINAL=$(date +%H:%M:%S)

echo -e "Inicio da atualizacao:\t$DATAINICIO às $HORAINICIO\t$BAT\nFim da atualizacao:\t$DATAFINAL às $HORAFINAL\t$BATFINAL\n"
echo -e "============ 1.0 =============="
echo -e "===== ATUALIZADO COM SUCESSO ====="
echo -e "===== Telegram @nrp_scorpion ====="
echo -e "========== NRP_Sc0rp10n =========="
echo -e "==================================\n"
