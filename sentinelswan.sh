#!/bin/bash

# Check root
if [ "$(id -u)" != "0" ] > /dev/null 2>&1; then
echo -e '\e[0;31m【!!】 Need root permission\e[0m' 1>&2
exit
fi


echo -e "\e[00;33mChecking for resources: \e[00m"
sleep 0.3

command -v netstat >/dev/null 2>&1 || { echo "netstat it's not installed.  Aborting." >&2; exit 1; }
:

echo " "
echo " "
echo " "


echo " "
echo -e "\e[01;33mSENTINELSWAN\e[00m"
echo " "
echo -e "\e[00;31m"
echo '            //
()=========>>=========================--
            \\'
echo " "
echo -e "\e[00m"
echo -e "\e[01;36mCODENAME: \e[00;32mcignaccio 0.0.2\e[00m"
echo -e "\e[01;32mCoded by Cignoraptor\e[00m "
echo -e "\e[00;31mCOUNTER-ESPIONAGE | GEO-TRACKING | ANTI MALWARE\e[00m"
echo " "
echo -e "===== \e[01;38mFor advanced versions ----> \e[01;34mcignoraptor@tutanota.com\e[00m"
echo " "




echo " "
PS3="Choose an option:"

select opt in "IP PROCESS, IDENTIFICATION AND TRACKING" "BLOCK PRIVACY THREATS" "SCRIPT ANALYZER - EPOI"
do
    case "$opt" in
             'IP PROCESS, IDENTIFICATION AND TRACKING')
echo " "

echo -e "\e[00;34mPress ENTER for start \e[00m"
read start1

netstat -atnp | grep ESTA > lista.txt

cat lista.txt | grep -o -i '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' > lisip.txt

#rm lista.txt

echo "Eth0: "
ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'
ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' > et0 
echo " "
echo "Eth1: "
ifconfig eth1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'

ifconfig eth1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' > et1
echo " "
echo "Wlan0: "
ip addr show wlan0 | grep -Po 'inet \K[\d.]+'
ip addr show wlan0 | grep -Po 'inet \K[\d.]+' > w0 

echo " "
#echo "INSERT YOUR LOCAL IP: "
#read ipcan

delw0=$(cat w0)
delet0=$(cat et0)
delet1=$(cat et1)

rm et0 && rm et1 && rm w0
cat lisip.txt | sed "s/\<$delw0\>//g" > dw0.txt
cat dw0.txt | sed "s/\<$delet0\>//g" > det0.txt
cat det0.txt | sed "s/\<$delet1\>//g" > lislan.txt
cat lislan.txt | sed "s/\<$ipcan\>//g" > qfin.txt
cat qfin.txt | sed "s/\<192.168.1.1\>//g" > fin.txt

cat fin.txt | grep -o -i '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' > fin2.txt

rm lisip.txt && rm fin.txt
rm dw0.txt && rm det0.txt && rm lislan.txt

echo -e "CONNECTIONS LIST WITH PROCESS..."
echo " "
sleep 0.5
echo -e "\e[00;33m"
cat lista.txt
echo " "

echo -e "\e[00;31mIP: "
cat fin2.txt
echo -e "\e[00m"

echo "--------"

echo -e "\e[00;33mProcess source: \e[00m"
cat lista.txt | grep -oP 'ESTA.*' > der.txt
cat der.txt | grep -Eio [0-9].+[0-9]+ > pid.txt

for line in `cat pid.txt`; do

echo " "
pidc=$(cat pid.txt)
pmap $pidc > tot.txt
cat tot.txt | grep ":"
done

rm tot.txt && rm pid.txt && rm der.txt

#----TRACKING

echo " "
echo -e "\e[00;34mInsert ENTER for start geo-tracking \e[00m \e[00;31mLocal|internal IPs will not be geolocated\e[00m!"
read start2


for line in `cat fin2.txt`; do

echo ""
echo -e "\e[01;32mTracking...\e[00m"
     echo - $line
sleep 1

curl -s ipinfo.io/$line |tr -d '" ,{}'
done
echo " "
echo -e "\e[00;34mFINISH TRACKING\e[00m..."
echo " "

#-------Blacklist control

echo -e "\e[00;33mIf you want control blacklist list presence in default list and ip-tracker.org insert ENTER for start or ctrl c for exit\e[00m: "
read avvio

echo " "
echo -e "\e[00;31mEvil IPs in the default list\e[00m..."
echo " "
sleep 0.3
for line in `cat fin2.txt`; do

cat listanera.txt | grep -o $line

done

echo " "
echo -e "\e[00;33mStarting Blacklist Analysis in ip-tracker.org\e[00m"
sleep 0.5
echo " "
for line in `cat fin2.txt`; do
echo "Searching $line..."
links2 -dump http://www.ip-tracker.org/blacklist-check.php?ip=$line | grep -oP 'Status:.*$'
echo " "
done
echo -e "\e[00;34mTracking done\e[00m"
        ;;
        'BLOCK PRIVACY THREATS')
        echo " "
        
                   echo " "
           echo -e "\e[00;33mInsert PID to stop\e[00m: "
           read pidk
           
           pmap $pidk > pidt.txt
           echo -e "\e[01;33mFile source: \e[00m"
           cat pidt.txt | grep ":" > perc.txt
           cat perc.txt
           echo " "
           echo -e "\e[00;31mAre you sure to stop? y/n"
           read siono
           
           if [[ $siono = y ]] 
           then
           
           kill $pidk
           
           elif [[ $siono  = n ]]
           then
           
           echo -e "\e[00;32mProcess not killed, \e[00;34mi return back\e[00m"
           
           else
           echo -e "\e[01;33mYou must enter y or n, return back\e[00m"
           
           fi
           
           echo " "
           echo -e "\e[01;37m------------------------------------------\e[00m"
           echo " "
           
           echo -e "\e[00;33mDo you want erase forever this file? \e[00;32m y/n \e[00m"
           echo -e "\e[00;31mWARNING: \e[00;33m If you delete a important file you can create a system problem.
If you don't know what are you doing... not erase!\e[00m"
           echo " "
           read osiono
           
           if [[ $osiono = y ]]
           then
           erasefile=$(cat perc.txt)
           
           shred -n 20 -z -u $erasefile
           echo " "
           echo -e "\e[01;33mReboot system for additional security\e[00m"
           
           elif [[ $osiono = n ]]
           then
           
           echo -e "\e[00;32mFile not erased, \e[00;34mi return back\e[00m"
           
           else
           echo -e "\e[01;33mYou must enter y or n, return back\e[00m"
           
           fi
           ;;
           'SCRIPT ANALYZER - EPOI')
           clear
           bar ()
{
BAR='=  =  =  =  \e[01;32m=  =  =  =  =  \e[00;34m !'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.04
done
}

bar
echo -e "\e[00m"
echo " "
echo -e "\e[01;42m____________________\e[00;41m_________\e[00m"
echo " "
echo -e "\e[01;32mEXTRACT PARASITE OF INTEREST\e[00m by \e[00;34mCignoraptor\e[00m"
echo -e "\e[01;33m"
bar

#cat swan.txt
echo -e "\e[00m "

echo -e "Extract informations and words considerated \e[00;31mmalicious\e[00m in open source resources\e[00m"
echo " "
echo -e "\e[01;36m-------------\e[00m"
echo "INSERT TARGET DIRECTORY"
read dire
cd $dire
echo " "
echo "INSERT COMMAND FOR START!"
read com


echo -e "\e[00;34mIP\e[00m"
grep --color -oR -i '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' *
#cat $filer | grep -o '\b[0-9.]\+\b'

echo " "
echo -e "\e[00;34memails\e[00m"
echo " "
#grep --color -oR -i '[[:alnum:]+\.\_\-]*@[[:alnum:]+\.\_\-]*' * | sort | uniq -i
#grep --color -Eio "[a-zA-Z0-9]+@[a-z0-9]+.[a-z]+"
grep --color -Eio "[a-zA-Z0-9]+@[a-z0-9]+.[a-z]+" *

echo " "
echo -e "\e[00;34mLinks\e[00m"
echo " "
#grep http $filer | sed 's/http/\nhttp/g' | grep ^http | sed 's/\(^http[^ <]*\)\(.*\)/\1/g' | grep http | sort -u
sleep 0.2

#grep -o '[a-zA-Z0-9./:-]\{1,30\}\.*/[[:alnum:]+\.\_\/\?\&\=\-]*' $filer | sort | uniq -i
grep --color -Eio "http://[a-z0-9]+.[a-z]+" *
grep --color -Eio "https://[a-z0-9]+.[a-z]+" *
sleep 0.2
grep --color -Eio "www.[a-z0-9]+.[a-z]+" *
echo " "


echo " "
echo -e "\e[00;34mDomains\e[00m"
echo " "
#grep -o '[a-zA-Z0-9.-]\{1,20\}\.[a-z]\{1,3\}' $filer
grep --color -oR -i '[a-zA-Z0-9.-]\{1,20\}\.[a-z]..' *


echo " "

echo -e "\e[00;34mJS Files\e[00m"
echo " "

#grep --color -oR -i '[a-zA-Z0-9./:-]\{1,20\}\.net*/[[:alnum:]+\.\_\/\?\&\=\-]*\.js' * | sort | uniq -i

grep --color -Eio "http://[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *
grep --color -Eio "https://[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *
grep --color -Eio "www.[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *
grep --color -Eio "[a-z0-9]+.[a-z]+/[a-z0-9]+.js" *


echo -e "\e[00;34mBase64 encoding\e[00m"
grep --color -oR -i base64 *

echo " "
echo -e "\e[00;33mSearching dangerous words/actions \e[01;33m(Human analysis required!)\e[00m"
echo " "
grep --color -oR -w fclose *
grep --color -oR -i feof *
grep --color -oR -i fopen *
grep --color -oR -i shred *
grep --color -oR -i socket *
grep --color -oR -w clone *
grep --color -oR -w daemon *
grep --color -oR -w "kill" *
grep --color -oR -i random_r *
grep --color -oR -i connect *
grep --color -oR -i sendto *
grep --color -oR -i listen *
grep --color -oR -i openlo *
grep --color -oR -i "chmod 0755" *
grep --color -oR -i "system()" *
grep --color -oR -i "exec(r.read())" *
grep --color -oR -i "exec(" *
grep --color -oR -i ":(){:|:&};:" *
grep --color -oR -i "/dev/sda" *
grep --color -oR -i "-O- | sh" *
grep --color -oR -i "dd if=/dev/random of=/dev/sda" *



echo " "
echo -e "\e[00;33mSearching for ransomware actions \e[00m"

grep --color -oR -w ".enc" *
grep --color -oR -w whiteKey *
grep --color -oR -i ransom *
grep --color -oR -w aes-128-cbc *
grep --color -oR -w aes-256-cbc *
grep --color -oR -w salt *
grep --color -oR -i bitcoin *

echo " "

echo -e "\e[00;31mHIDDEN FILES\e[00m"
echo " "
ls -ld .?*
ls -d */ | cut -f1 -d '/' > cart.txt

for line in `cat cart.txt`; do

cd $line

ls -ld .?*
cd - > /dev/null

done

rm cart.txt

echo " "
echo "========================"
rm *.txt
echo -e "\e[01;33mFINE\e[00m..."

           break;
           esac
done               
