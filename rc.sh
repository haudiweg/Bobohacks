$@&
loginerror=0
errorerror=0
until wid=$(xdotool search --onlyvisible --name RobocraftClient)
do   
    sleep 0.1
done
while ! (import -window root -depth 4 -crop "1x1+1084+488" txt:-|grep "#111100"); do
    sleep 0.1
    if !(xdotool getwindowname $wid > /dev/null);then
     exit
    fi
done
let wid=$(xdotool search --name RobocraftClient)
xdotool mousemove 950 500 click 1 --window $wid
while (true); do
    sleep 1
    ##if (import -window root -crop "1x1+1089+511" txt:-|egrep "#43438787BFBF|#46468181B2B2");then
    ##    xdotool click 1
    ##fi
    if ((loginerror>0));then
        loginerror-=1
    fi
    if !(xdotool getwindowname $wid > /dev/null);then
        if ((loginerror>0));then
            steam steam://rungameid/301520&
        fi
        exit
    fi
    if (import -window $wid -crop "1x1+769+413" txt:-|grep "#4B494B494B49");then
        xdotool mousemove 1081 672 click --window $wid 1
        loginerror=40
        errorerror+=1
    fi
    if ((errorerror>20));then
        exit

        ##fallback wen rc mal wieder abschmiert
        ##vieleicht taskkill rc
    fi
    if (import -window $wid -crop "1x1+1901+65" txt:-|grep "#282827272626");then
        exit
        ##script sol sich nach login deaktivieren 
    fi
done
##kuck ob error meldung kom ganze zeit
##wen dan klick weck und warte drauf wieder
##wen net kuck ob process noch läuft
##wen rc einlog scrreen angezeigt wird ge zu wait

# befehl in steam war wohl /home/haudiweg/rc.sh %command%
