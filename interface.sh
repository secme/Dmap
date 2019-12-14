#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

clear
echo "";	
cat << "EOF"
        _,--',   _._.--._____
 .--.--';_'-.', ";_      _.,-'
.'--'.  _.'    {`'-;_ .-.>.'
      '-:_      )  / `' '=.
        ) >     {_/,     /~)
snd     |/               `^ .'

      Program     : Dmap ( Domain Mapper ver 1.0a) 
      Programmer  : Haroon Awan, HackerUniversee
      Web         : fb.com/officialharoonawan
      Channel     : youtube.com/c/HackerUniverse
EOF

 echo "";
 echo -e "$red [$green+$red]  1:$off Subdomain Scanner using 10 Engines "; 
 echo -e "$red [$green+$red]  2:$off Subdomain Takeover Search ";
 echo -e "$red [$green+$red]  3:$off Brute force to find Subdomains  "; 
 echo -e "$red [$green+$red]  4:$off Search DNS History  ";
 echo -e "$red [$green+$red]  5:$off Search Passive DNS History ";
 echo -e "$red [$green+$red]  6:$off Find Domains through Certificates";
 echo -e "$red [$green+$red]  7:$off Find Subdomains and CNames ";
 echo "";
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option
    if [ $Option -eq "1" ]
then
    ./ShaheenX.sh
fi

 if [ $Option -eq "2" ]
then
    ./takeoverscanner.sh
fi

 if [ $Option -eq "3" ]
then
    ./maahro.sh
fi

 if [ $Option -eq "4" ]
then
    perl dnsbrute.pl
fi

 if [ $Option -eq "5" ]
then
    ./passive.sh
  fi 

 if [ $Option -eq "6" ]
then
    ./crtstart.sh
  fi 

 if [ $Option -eq "7" ]
then
   ./vasl.sh
    fi
