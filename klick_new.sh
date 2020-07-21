#!/bin/bash

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -d|--debug) debug=1 ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done

sleep 2
let wid=$(xdotool search --name RobocraftClient)
xdotool windowfocus $wid
xdotool mousemove --window $wid 0 0
xdotool click --window $wid 1
while true; do
    import -window $wid -depth 2 test.jpg
    bayfree=$(echo $(convert test.jpg -crop "155x105+1332+910" jpg:- |compare -metric MAE - click/bayfree.jpg null 2>&1)| awk '{print int($1+0.5)}')
    seach=$(echo $(convert test.jpg -crop "1882x40+19+98" jpg:- |compare -metric MAE - click/seach.jpg null 2>&1)| awk '{print int($1+0.5)}')
    factorybotsearch=$(echo $(convert test.jpg -crop "337x24+130+148" jpg:- |compare -metric MAE - click/factorybotsearch.jpg null 2>&1)| awk '{print int($1+0.5)}')
    botfactoryget=$(echo $(convert test.jpg -crop "2707x21+0+1028" jpg:- |compare -metric MAE - click/botfactoryget.jpg null 2>&1)| awk '{print int($1+0.5)}')
    buyscreen=$(echo $(convert test.jpg -crop "1046x213+438+534" jpg:- |compare -metric MAE - click/buyscreen.jpg null 2>&1)| awk '{print int($1+0.5)}')
    buybotmenu=$(echo $(convert test.jpg -crop "1054x516+434+284" jpg:- |compare -metric MAE - click/buybotmenu.jpg null 2>&1)| awk '{print int($1+0.5)}')
    delbot=$(echo $(convert test.jpg -crop "144x24+705+861" jpg:- |compare -metric MAE - click/delbot.jpg null 2>&1)| awk '{print int($1+0.5)}')
    delbotmenu=$(echo $(convert test.jpg -crop "461x202+727+437" jpg:- |compare -metric MAE - click/delbotmenu.jpg null 2>&1)| awk '{print int($1+0.5)}')
    doubledell=$(echo $(convert test.jpg -crop "117x446+732+438" jpg:- |compare -metric MAE - click/doubledell.jpg null 2>&1)| awk '{print int($1+0.5)}')
    errordontdell=$(echo $(convert test.jpg -crop "162x140+1506+908" jpg:- |compare -metric MAE - click/errordontdell.jpg null 2>&1)| awk '{print int($1+0.5)}')
    playmenu=$(echo $(convert test.jpg -crop "925x488+0+578" jpg:- |compare -metric MAE - click/playmenu.jpg null 2>&1)| awk '{print int($1+0.5)}')
    falsebot=$(echo $(convert test.jpg -crop "1955x504+431+283" jpg:- |compare -metric MAE - click/falsebot.jpg null 2>&1)| awk '{print int($1+0.5)}')
    friends=$(echo $(convert test.jpg -crop "243x74+1651+133" jpg:- |compare -metric MAE - click/friends.jpg null 2>&1)| awk '{print int($1+0.5)}')



    


    if [[ -n $debug ]]; then
        echo -e "
        bayfree             $bayfree
        seach               $seach
        factorybotsearch    $factorybotsearch
        botfactoryget       $botfactoryget
        buyscreen           $buyscreen
        buybotmenu          $buybotmenu
        delbot              $delbot
        delbotmenu          $delbotmenu
        doubledell          $doubledell
        errordontdell       $errordontdell
        playmenu            $playmenu
        falsebot            $falsebot
        friends             $friends
        "
    fi

    if [ "$doubledell" -lt 380 ]; then
        xdotool mousemove --window $wid 1085 615 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\nf1'
        fi
    elif [ "$errordontdell" -lt 400 ]; then
        xdotool mousemove --window $wid 1392 933 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\nf2'
        fi
    elif [ "$playmenu" -lt 800 ]; then
        xdotool mousemove --window $wid 55 49 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\nf3'
        fi
    elif [ "$friends" -lt 600 ]; then
        xdotool key --window $wid n
        if [[ -n $debug ]]; then
            echo -e '\friends1'
        fi
    elif [ "$bayfree" -lt 420 ]; then
        xdotool key --window $wid p
        if [[ -n $debug ]]; then
            echo -e '\n1'
        fi
    elif [ "$seach" -lt 717 ]; then
        xdotool mousemove --window $wid 1339 122
        xdotool click --window $wid 1
        xdotool type --window $wid MAIGA
        xdotool key --window $wid space
        xdotool type --window $wid Cow
        xdotool key --window $wid Return
        if [[ -n $debug ]]; then
            echo -e '\n2'
        fi
    elif [ "$factorybotsearch" -lt 1400 ]; then 
        xdotool mousemove --window $wid 395 221 click --window $wid 1
        if [[ -n $debug ]]; then
            echo '\n3'
        fi
    elif [ "$buybotmenu" -lt 700 ]; then
        xdotool mousemove --window $wid 647 772 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\n6'
        fi
    elif [ "$falsebot" -lt 500 ]; then
        xdotool mousemove --window $wid 1317 797
        xdotool click --window $wid 1
        sleep 0.5
        xdotool mousemove --window $wid 950 1051
        xdotool click --window $wid 1
        sleep 0.5
        xdotool mousemove --window $wid 62 54 
        xdotool click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\nf4'
        fi
    elif [ "$buyscreen" -lt 700 ]; then
        xdotool mousemove --window $wid 901 450 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\n5'
        fi
    elif [ "$botfactoryget" -lt 12000 ]; then
        xdotool mousemove --window $wid 1645 606 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\n4'
        fi
    elif [ "$delbotmenu" -lt 5000 ]; then
        xdotool mousemove --window $wid 834 626 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\n8'
        fi
    elif [ "$delbot" -lt 5200 ]; then
        xdotool mousemove --window $wid 1475 871 click --window $wid 1
        if [[ -n $debug ]]; then
            echo -e '\n7'
        fi
    else
        if [[ -n $debug ]]; then
            echo -e '\nwait1'
        fi
        sleep 0.01
    fi
done

##failsave wen bot sich aufhängt