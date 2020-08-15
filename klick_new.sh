#!/bin/bash
echo "rc should be in full hd window (fullscreen) fastest gpu settings and all slots exept 99 and 100 should be full"
function doubledell(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "117x446+732+438" jpg:- |compare -metric MAE - click/doubledell.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 380 ]; then
        xdotool mousemove --window $wid 1085 615 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\nf1';fi
        return 1
    else
        return 0
    fi
}
function errordontdell(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "162x140+1506+908" jpg:- |compare -metric MAE - click/errordontdell.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 400 ]; then
        xdotool mousemove --window $wid 1392 933 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\nf2';fi
        return 1
    else
        return 0
    fi
}
function playmenu(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "925x488+0+578" jpg:- |compare -metric MAE - click/playmenu.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 800 ]; then
        xdotool mousemove --window $wid 55 49 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\nf3';fi
        return 1
    else
        return 0
    fi
}
function friends(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "243x74+1651+133" jpg:- |compare -metric MAE - click/friends.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 600 ]; then
        xdotool key --window $wid n
        if [[ -n $debug ]]; then echo -e '\friends1';fi
        return 1
    else
        return 0
    fi
}
function bayfree(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "155x105+1332+910" jpg:- |compare -metric MAE - click/bayfree.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 420 ]; then
        xdotool key --window $wid p
        if [[ -n $debug ]]; then echo -e '\n1';fi
        return 1
    else
        return 0
    fi
}
function seach(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "1882x40+19+98" jpg:- |compare -metric MAE - click/seach.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 717 ]; then
        xdotool mousemove --window $wid 1339 122
        xdotool click --window $wid 1
        xdotool type --window $wid MAIGA
        xdotool key --window $wid space
        xdotool type --window $wid Cow
        xdotool key --window $wid Return
        if [[ -n $debug ]]; then echo -e '\n2';fi
        return 1
    else
        return 0
    fi
}
function factorybotsearch(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "337x24+130+148" jpg:- |compare -metric MAE - click/factorybotsearch.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 1400 ]; then 
        xdotool mousemove --window $wid 395 221 click --window $wid 1
        if [[ -n $debug ]]; then echo '\n3';fi
        return 1
    else
        return 0
    fi
}
function buybotmenu(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "1054x516+434+284" jpg:- |compare -metric MAE - click/buybotmenu.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 700 ]; then
        xdotool mousemove --window $wid 647 772 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\n6';fi
        return 1
    else
        return 0
    fi
}
function falsebot(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "1955x504+431+283" jpg:- |compare -metric MAE - click/falsebot.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 500 ]; then
        xdotool mousemove --window $wid 1317 797
        xdotool click --window $wid 1
        sleep 0.5
        xdotool mousemove --window $wid 950 1051
        xdotool click --window $wid 1
        sleep 0.5
        xdotool mousemove --window $wid 62 54 
        xdotool click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\nf4';fi
        return 1
    else
        return 0
    fi
}
function buyscreen(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "1046x213+438+534" jpg:- |compare -metric MAE - click/buyscreen.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 700 ]; then
        xdotool mousemove --window $wid 901 450 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\n5';fi
        checklist=(
            "buybotmenu"
            "falsebot"
            "bayfree"
            "seach"
            "factorybotsearch"
            "buyscreen"
            "botfactoryget"
            "delbot"
            "delbotmenu"
            "doubledell"
            "errordontdell"
            "playmenu"
            "friends"
        )
        return 1
    else
        return 0
    fi
}
function botfactoryget(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "2707x21+0+1028" jpg:- |compare -metric MAE - click/botfactoryget.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 12000 ]; then
        xdotool mousemove --window $wid 1645 606 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\n4';fi
        checklist=(
            "bayfree"
            "seach"
            "factorybotsearch"
            "buyscreen"
            "botfactoryget"
            "buybotmenu"
            "delbot"
            "delbotmenu"
            "doubledell"
            "errordontdell"
            "playmenu"
            "falsebot"
            "friends"
        )
        return 1
    else
        return 0
    fi
}
function delbotmenu(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "461x202+727+437" jpg:- |compare -metric MAE - click/delbotmenu.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 5000 ]; then
        xdotool mousemove --window $wid 834 626 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\n8';fi
        checklist=(
            "bayfree"
            "seach"
            "factorybotsearch"
            "botfactoryget"
            "buyscreen"
            "buybotmenu"
            "delbot"
            "delbotmenu"
            "doubledell"
            "errordontdell"
            "playmenu"
            "falsebot"
            "friends"
        )
        return 1
    else
        return 0
    fi
}
function delbot(){
    if [ "$(echo $(convert $tmp_dir/test.jpg -crop "144x24+705+861" jpg:- |compare -metric MAE - click/delbot.jpg null: 2>&1)| awk '{print int($1+0.5)}')" -lt 5200 ]; then
        xdotool mousemove --window $wid 1475 871 click --window $wid 1
        if [[ -n $debug ]]; then echo -e '\n7';fi
        checklist=(
            "delbotmenu"
            "bayfree"
            "seach"
            "factorybotsearch"
            "botfactoryget"
            "buyscreen"
            "buybotmenu"
            "delbot"
            "doubledell"
            "errordontdell"
            "playmenu"
            "falsebot"
            "friends"
        )
        return 1
    else
        return 0
    fi
}

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -d|--debug) debug=1 ;;
        *) echo "Unknown parameter passed: $1"; exit 1 ;;
    esac
    shift
done
checklist=(
    "bayfree"
    "seach"
    "factorybotsearch"
    "botfactoryget"
    "buyscreen"
    "buybotmenu"
    "delbot"
    "delbotmenu"
    "doubledell"
    "errordontdell"
    "playmenu"
    "falsebot"
    "friends"
)
##die liste kan nach jeder function reinfolge ferendert werden
tmp_dir=$(mktemp -d)
trap "exit 1"           HUP INT PIPE QUIT TERM
trap 'rm -rf "$tmp_dir"' EXIT
sleep 2
let wid=$(xdotool search --name RobocraftClient)
xdotool windowfocus $wid
xdotool mousemove --window $wid 0 0
xdotool click --window $wid 1
while true; do
    import -window $wid -depth 2 $tmp_dir/test.jpg
    if [[ -n $debug ]]; then
        echo -e "
        bayfree             $(echo $(convert $tmp_dir/test.jpg -crop "155x105+1332+910" jpg:- |compare -metric MAE - click/bayfree.jpg null: 2>&1)| awk '{print int($1+0.5)}')  420
        seach               $(echo $(convert $tmp_dir/test.jpg -crop "1882x40+19+98" jpg:- |compare -metric MAE - click/seach.jpg null: 2>&1)| awk '{print int($1+0.5)}')  717
        factorybotsearch    $(echo $(convert $tmp_dir/test.jpg -crop "337x24+130+148" jpg:- |compare -metric MAE - click/factorybotsearch.jpg null: 2>&1)| awk '{print int($1+0.5)}')  1400
        botfactoryget       $(echo $(convert $tmp_dir/test.jpg -crop "2707x21+0+1028" jpg:- |compare -metric MAE - click/botfactoryget.jpg null: 2>&1)| awk '{print int($1+0.5)}')  12000
        buyscreen           $(echo $(convert $tmp_dir/test.jpg -crop "1046x213+438+534" jpg:- |compare -metric MAE - click/buyscreen.jpg null: 2>&1)| awk '{print int($1+0.5)}')  700
        buybotmenu          $(echo $(convert $tmp_dir/test.jpg -crop "1054x516+434+284" jpg:- |compare -metric MAE - click/buybotmenu.jpg null: 2>&1)| awk '{print int($1+0.5)}')  700
        delbot              $(echo $(convert $tmp_dir/test.jpg -crop "144x24+705+861" jpg:- |compare -metric MAE - click/delbot.jpg null: 2>&1)| awk '{print int($1+0.5)}')  5200
        delbotmenu          $(echo $(convert $tmp_dir/test.jpg -crop "461x202+727+437" jpg:- |compare -metric MAE - click/delbotmenu.jpg null: 2>&1)| awk '{print int($1+0.5)}')  5000
        doubledell          $(echo $(convert $tmp_dir/test.jpg -crop "117x446+732+438" jpg:- |compare -metric MAE - click/doubledell.jpg null: 2>&1)| awk '{print int($1+0.5)}')  380
        errordontdell       $(echo $(convert $tmp_dir/test.jpg -crop "162x140+1506+908" jpg:- |compare -metric MAE - click/errordontdell.jpg null: 2>&1)| awk '{print int($1+0.5)}')  400
        playmenu            $(echo $(convert $tmp_dir/test.jpg -crop "925x488+0+578" jpg:- |compare -metric MAE - click/playmenu.jpg null: 2>&1)| awk '{print int($1+0.5)}')  800
        falsebot            $(echo $(convert $tmp_dir/test.jpg -crop "1955x504+431+283" jpg:- |compare -metric MAE - click/falsebot.jpg null: 2>&1)| awk '{print int($1+0.5)}')  500
        friends             $(echo $(convert $tmp_dir/test.jpg -crop "243x74+1651+133" jpg:- |compare -metric MAE - click/friends.jpg null: 2>&1)| awk '{print int($1+0.5)}')  600
        "
    fi
    for ((i=0; i<${#checklist[@]}; i++)); do
        ${checklist[$i]}
        ##echo '\n'$i" "$?
        if [[ $? -eq 1 ]]; then
            break
        fi
        if [[ "$i" == ${#checklist[@]}-1 && "$?" == "0"  && -n $debug ]]; then echo -e '\nwait1';fi
    done
done

##failsave wen bot sich aufhängt
