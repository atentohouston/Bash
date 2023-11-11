#!/bin/bash

clear
sudo apt-get install -y sshpass > /dev/null 2>&1
clear

redColour="\e[0;31m\033[1m"
endColour="\033[0m\e[0m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


banner="
 _                     _ _ _   
| |__   __ _ _ __   __| (_) |_ 
| '_ \ / _\` | '_ \ / _\` | | __|
| |_) | (_| | | | | (_| | | |_ 
|_.__/ \__,_|_| |_|\__,_|_|\__|
"

echo -e "${blueColour}${banner}${endColour}"

greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


bandit0="sshpass -p 'bandit0' ssh -o StrictHostKeyChecking=no bandit0@bandit.labs.overthewire.org -p 2220 -yes"
bandit1="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
bandit2="sshpass -p 'rRGizSaX8Mk1RTb1CNQoXTcYZWU6lgzi' ssh -o StrictHostKeyChecking=no bandit2@bandit.labs.overthewire.org -p 2220"
bandit3="sshpass -p 'aBZ0W5EmUfAf7kHTQeOwd8bauFJ2lAiG' ssh -o StrictHostKeyChecking=no bandit3@bandit.labs.overthewire.org -p 2220"
bandit4="sshpass -p '2EW7BBsr6aMMoJ2HjW067dm8EgX26xNe' ssh -o StrictHostKeyChecking=no bandit4@bandit.labs.overthewire.org -p 2220"
bandit5="sshpass -p 'lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR' ssh -o StrictHostKeyChecking=no bandit5@bandit.labs.overthewire.org -p 2220"
bandit6="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
bandit7="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
bandit8="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
bandit9="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
bandit10="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
bandit11="sshpass -p 'NH2SXQwcBdpmTEzi3bvBHMM9H66vVXjL' ssh -o StrictHostKeyChecking=no bandit1@bandit.labs.overthewire.org -p 2220"
mama="sshpass -p '154' ssh -o StrictHostKeyChecking=no ana@192.168.1.6 -p 22 echo hola > hola.txt && dir"

echo -e "\n ${yellowColour}[+]${endColour} ${redColour}https://overthewire.org/wargames/bandit/${endColour} \n\n ${redColour}-> ${endColour}${greenColour}0) bandit0${endColour}\n\n ${redColour}->${endColour} ${greenColour}1) bandit1${endColour}\n\n ${redColour}->${endColour} ${greenColour}2) bandit2${endColour}\n\n ${redColour}->${endColour}${greenColour} 3) bandit3${endColour}\n\n ${redColour}-> ${endColour}${greenColour}4) bandit4${endColour}\n\n ${redColour}->${endColour} ${greenColour}5) bandit5${endColour}\n\n ${redColour}->${endColour} ${greenColour}6) bandit6${endColour}\n\n ${redColour}->${endColour} ${greenColour}7) bandit7${endColour}\n\n ${redColour}->${endColour} ${greenColour}8) bandit8${endColour}\n\n ${redColour}->${endColour} ${greenColour}9) bandit9${endColour}\n\n ${redColour}->${endColour} ${greenColour}10) bandit10${endColour}\n\n ${redColour}->${endColour} ${greenColour}11) bandit11${endColour}\n\n ${redColour}->${endColour} ${greenColour}12) bandit12${endColour}\n\n ${redColour}->${endColour} ${greenColour}13) bandit13${endColour}\n\n"
echo -e "${yellowColour}[+] ${endColour}${greenColour}Ingresa el número del bandit que quieres conectar${endColour}\n\n"

read -p "N°" option 

if [[ $option -eq 0 ]]; then
    bandit_command=$bandit0
elif [[ $option -eq 1 ]]; then
    bandit_command=$bandit1
elif [[ $option -eq 2 ]]; then
    bandit_command=$bandit2
elif [[ $option -eq 3 ]]; then
    bandit_command=$bandit3
elif [[ $option -eq 4 ]]; then
    bandit_command=$bandit4
elif [[ $option -eq 5 ]]; then
    bandit_command=$bandit5
elif [[ $option -eq 6 ]]; then
    bandit_command=$bandit6
elif [[ $option -eq 7 ]]; then
    bandit_command=$bandit7
elif [[ $option -eq 8 ]]; then
    bandit_command=$bandit8
elif [[ $option -eq 9 ]]; then
    bandit_command=$bandit9
elif [[ $option -eq 10 ]]; then
    bandit_command=$bandit10
elif [[ $option -eq 11 ]]; then
    bandit_command=$bandit11
elif [[ $option -eq 12 ]]; then
    bandit_command=$bandit12
elif [[ $option -eq 13 ]]; then
    bandit_command=$mama
else
    echo -e "${redColour}Opción inválida.${endColour}"
    exit 1
fi

#echo -e "\n\n${greenColour}Has seleccionado:${endColour} $bandit_command"
eval "$bandit_command"