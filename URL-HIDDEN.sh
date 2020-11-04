#Script de bash para ocultar URL de phishing creado por FdnX y ThrCmRT36

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] URL invalida. Utilice http o https.\e[0m"
            exit 1
        fi
    fi
}

echo
 red='\033[1;31m'
 rset='\033[0m'
 grn='\033[1;32m'
 ylo='\033[1;33m'
 blue='\033[1;34m'
 cyan='\033[1;36m'
 pink='\033[1;35m'
 #coding section starts :)
 clear
 echo 
 echo '
   ██╗░░░██╗██████╗░██╗░░░░░  ██╗░░██╗██╗██████╗░██████╗░███████╗███╗░░██╗
   ██║░░░██║██╔══██╗██║░░░░░  ██║░░██║██║██╔══██╗██╔══██╗██╔════╝████╗░██║
   ██║░░░██║██████╔╝██║░░░░░  ███████║██║██║░░██║██║░░██║█████╗░░██╔██╗██║
   ██║░░░██║██╔══██╗██║░░░░░  ██╔══██║██║██║░░██║██║░░██║██╔══╝░░██║╚████║
   ╚██████╔╝██║░░██║███████╗  ██║░░██║██║██████╔╝██████╔╝███████╗██║░╚███║
   ░╚═════╝░╚═╝░░╚═╝╚══════╝  ╚═╝░░╚═╝╚═╝╚═════╝░╚═════╝░╚══════╝╚═╝░░╚══╝v0.8
' |lolcat
printf "\n"
printf "                \e[101m\e[1;77m  >>  Script By FdnX y ThrCmRT36 << \e[0m\n"
printf "\n"
printf "  \e[100m\e[1;77m >>  Canal de Youtube : \e[1;96m FdnX - CREW \e[100m\e[1;77m << \e[0m\n"
printf "\n"
echo
echo
echo -e "\e[1;31;42m ### URL de phishing ###\e[0m"
echo
echo -n "Pega la URL Phishing aqui (con http o https): "
read phish
url_checker $phish
short=$(curl -s https://da.gd/s/?url=${phish})
shorter=${short#https://}
echo
echo -e "\e[1;31;42m ### Enmascarando Dominio ###\e[0m"
echo 'Dominio para enmascarar la URL de phishing (con http o https), ex https://google.com, http
://anything.org) :'
echo
read mask
url_checker $mask
echo
echo 'Escriba palabras de ingeniería social: (como dinero-gratis, mmejores-trucos-pubg)'
echo
echo -e "\e[31mNo uses el espacio, solo usa '-' entre palabras de ingeniería social\e[0m"
echo
read words
echo
echo 'Generando enlace URL-HIDDEN...'
echo
echo 'Aquí está la URL de URL-HIDDEN..'
echo
final=$mask-$words@$shorter
echo $final
