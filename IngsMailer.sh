#!/bin/bash
# Author: Mr. IngsSs
# Region : Indonesian
#Contact Mail : IngsSec@mbox.re
#Team : Black Cyber team

function banner(){
    echo -e "${verde}"
    echo -e "██╗███╗   ██╗ ██████╗ ███████╗███╗   ███╗ █████╗ ██╗██╗ "    
    echo -e "██║████╗  ██║██╔════╝ ██╔════╝████╗ ████║██╔══██╗██║██║"     
    echo -e "██║██╔██╗ ██║██║  ███╗███████╗██╔████╔██║███████║██║██║ "    
    echo -e "██║██║╚██╗██║██║   ██║╚════██║██║╚██╔╝██║██╔══██║██║██║ "    
    echo -e "██║██║ ╚████║╚██████╔╝███████║██║ ╚═╝ ██║██║  ██║██║███████╗"
    echo -e "╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚══════╝"
}

PWD=$(pwd)
source ${PWD}/variables.sh

trap ctrl_c int
function ctrl_c(){
    clear
    banner
    echo -e "\n${verde}[${blanco}${parpadeo}*${final}${verde}] Anda Telah Keluar...${final}"
    sleep 3
    clear
    exit 1
}




function main(){
    clear
    banner
    sleep 1
    fakemail
}

function fakemail(){
    clear
    banner
    sleep 1
    echo -e ""
    echo -e "${verde} Email Fake: ${rojo} >${final} \n"
    read faker
    clear
    banner
    echo -e "${verde} Email Target: ${rojo} >${final} \n"
    read fakiado
    clear
    banner
    echo -e "${verde} Title Pesan: ${rojo} >${final} \n"
    read title
    clear
    banner
    echo -e "${verde} Pesan: ${rojo} >${final} \n"
    read mess
    sleep 1
    clear
    banner
    echo -e "${verde} Pastikan Pengisian Benar: \n ${final}" 
    echo -e ""
    echo -e "${rojo} > ${blanco} Email Fake : $faker ${final} \n"
    echo -e "${rojo} > ${blanco} Email Target: $fakiado ${final} \n"
    echo -e "${rojo} > ${blanco} Title Pesan: $title ${final} \n"
    echo -e "${rojo} > ${blanco} Pesan: $mess ${final} \n"
    sleep 1
    echo -e "${verde}Siap Mengirim Pesan ? ${rojo}[y/n]${final}"
		read Seguro
		case $Seguro in
			y)
			curl --data "remitente=$fakiado && asunto=$title && msj=$mess && desde=$faker" https://insessorial-halls.000webhostapp.com/send.php
            clear
            banner
            sleep 1
            echo -e "\n${verde}[${rojo}+${verde}]${final} Success Mengirim Pesan ${final}"
			;;	
			n)
				clear
                banner
                exit 1
            ;;
            *) echo "anda telah keluar... "
            ;;
        esac

}

main
