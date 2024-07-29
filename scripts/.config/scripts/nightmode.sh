#!/bin/sh


if [ -z "$(pidof gammastep)" ]; then
    text="";
    tooltip="activate nightmode"
    procentage="100"
    gammastep -O 3700 > /dev/null 2>&1 &
else
    text="";
    tooltip="deactivate nightmode"
    class="active"
    procentage="0"
    kill -9 "$(pidof gammastep)"
fi


echo "$text"
echo "$tooltip"
echo "$class"
echo "$procentage"


exit

result="$( jq -n \
    --arg text "$text" \
    --arg tooltip "$tooltip" \
    --arg class "$class" \
    --arg procentage "$procentage" \
    '{"text": $text, "tooltip": $tooltip, "class": $class , "procentage": $procentage }' )"

echo "$result"
