#!/bin/bash

#thanks to https://askubuntu.com/questions/66914/how-to-change-desktop-background-from-command-line-in-unity
#get current background
#cur_pic="$(gsettings get org.gnome.desktop.background picture-uri | sed "s,^'file://,,;s/'\$//;")";
cur_pic="$(echo $HOME/Pictures/spaceship-kitten-*.jpg | tr " " "\\n" | shuf | head -n 1)";

cur_resolution="$(identify "${cur_pic}" | grep -oE "[[:digit:]]+x[[:digit:]]+" | head -n 1)";
cur_pic_width=$(sed -E "s/^([[:digit:]]*)x.*/\\1/" <<< "${cur_resolution}");
cur_pic_height=$(sed -E "s/[^x]*x([[:digit:]]*)\$/\\1/" <<< "${cur_resolution}");
#echo "${cur_pic_width}";
#echo "${cur_pic_height}";
#image_dir="$(dirname "${0}")";
#pushd $(dirname $0) > /dev/null
#image_dir=$(pwd)
#popd > /dev/null
image_dir="$HOME/.local/share";
mkdir -p "${image_dir}";
background_path="${image_dir}/custom-desktop-background_test.jpg"

FONT="FreeMono"
#28 for Arial
font_size=18;
line_height=27; #for FreeMono pointsize 24
char_width=11; #for FreeMono pointsize 24

#connected_usb="$(lsusb | cut -d" " -f 7- | grep -v "Linux Foundation [0-9.]* root hub")";
connected_usb="";
for curdev in $(lsusb | sed -E "s/^Bus ([[:digit:]]+) Device ([[:digit:]]+):.*/\\1:\\2/;"); do
    buf="$(lsusb -v -s $curdev 2>/dev/null | sed "s/Human Interface Device/HID/")";
    interface_class_num="$(sed -nE "/bInterfaceClass/{s/^[[:blank:]]*bInterfaceClass[[:blank:]]+([[:digit:]])+[[:blank:]]+.*/\\1/;p;q;};" <<< "${buf}")";
    interface_class_str="$(sed -nE "/bInterfaceClass/{s/^[[:blank:]]*bInterfaceClass[[:blank:]]+[[:digit:]]+[[:blank:]]+//;p;};" <<< "${buf}" | uniq | tr "\\n" "," | head -c -1)";
    interface_protocol="$(sed -nE "/bInterfaceProtocol/{s/^[[:blank:]]*bInterfaceProtocol[[:blank:]]+[[:digit:]]+[[:blank:]]+//;p;q;};" <<< "${buf}")";
    idVendor="$( sed -nE "/idVendor/{s/^[[:blank:]]*idVendor[[:blank:]]+[x0-9a-fA-F]+[[:blank:]]+//;p;};" <<< "${buf}")";
    idProduct="$(sed -nE "/idProduct/{s/^[[:blank:]]*idProduct[[:blank:]]+[x0-9a-fA-F]+[[:blank:]]+//;p;}" <<< "${buf}")";
    if [ 9 -eq ${interface_class_num} ] && [ "Linux Foundation" = "${idVendor}" ]; then
        false;
    else
        my_class="";
        if [ 3 -eq ${interface_class_num} ]; then
            my_class="HID (${interface_protocol})";
        else
            my_class="${interface_class_str}";
        fi;
        if [ $(grep "bInterfaceClass" <<< "${buf}" | uniq -c | wc -l ) -gt 1 ]; then
            my_class+=" (!)";
            my_class="!${my_class}"
        fi;
        connected_usb+="$(printf "%-14s %s %s" "${my_class}" "${idVendor}" "${idProduct}")"$'\n';
    fi;
done

max_line_count=$(wc -l <<< "${connected_usb}");
max_line_length=$(wc -L <<< "${connected_usb}");
#echo ${max_line_count}
#echo ${max_line_length}

#Can't call this function :(
function center_this {
    mylength=$1;
    myline="$2";
    fillup=$((${mylength} - $(wc -L <<< "${myline}")));
    if [ ${fillup} -gt 0 ]; then
        printf "%$((${fillup} / 2))s%s%$((${fillup} / 2 + ${fillup} % 2))s" "" "${myline}" "";
    else
        printf "%s" "${myline}";
    fi;
}
export -f center_this;


connected_usb="\        --- $(date +%H:%M) ---"$'\n'"\     --- USB-Devices ---"$'\n'"${connected_usb}";
disk_report=$'Mountpoint  Usage    Free\n';
for curmount in "/home" "/"; do
    percent="$(LC_ALL="C" df --output=pcent -x tmpfs -B 1G ${curmount} | tail -n +2 | sed "s/%\$//")";
    avail="$(LC_ALL="C" df --output=avail -x tmpfs -B 1G ${curmount} | tail -n +2)";
    if [ 90 -lt $percent ];
    then
        disk_report+="!";
    elif [ 1 -ge $avail ];
    then
        disk_report+="!";
    fi;
    disk_report+="$(printf "%-12s %4s %4s GB" "${curmount}" "${percent}%" "${avail}" )"$'\n';
done;

connected_usb+=$'\n\     --- Disk-Space ---  \n'"${disk_report}";
#conv_lines=" -fill 'rgba(0,0,0,0.5) ' -draw \"rectangle 1218,118,1572,$((150 + ${line_height} + $(wc -l <<< "${connected_usb}") * ${line_height} + 2 ))\" ";

#TODO
#connected_usb+=$'\n\     --- Ping ---\n';



max_line_count=$(wc -l <<< "${connected_usb}");
max_line_length=$(wc -L <<< "${connected_usb}");
calc_height=$((${line_height} * $((${max_line_count} + 1))));
calc_width=$((${char_width} * $((${max_line_length} + 1))));
distance_right=5;
distance_top=$((50 + ${cur_pic_height} / 10));
draw_border="true";
#Awesome documentation on ImageMagic drawing here:
#https://legacy.imagemagick.org/Usage/draw/
if ! [ "false" = "${draw_border}" ]; then
    rect_coords="";
    rect_coords="${rect_coords} $((${cur_pic_width} - ${calc_width} - ${distance_right}))";
    rect_coords="${rect_coords},${distance_top}";
    rect_coords="${rect_coords},$((${cur_pic_width} - ${distance_right}))";
    rect_coords="${rect_coords} $((${distance_top} + ${calc_height}))";
    #conv_lines+=" -stroke 'rgba(0,0,0,0.5)' -fill 'rgba(255,255,0.5)' -draw \"rectangle 1220,120,1570,$((150 + ${calc_height} ))\"";
    #-stroke '#A0A0A040'
    conv_lines+=" -strokewidth 1 -stroke '#ffffffe0' -fill '#ffffff40' -draw \"roundrectangle ${rect_coords} 25,25\"";
    conv_lines+=" -strokewidth 1"
fi;
curlinenum=0;
while read curline; do
    if [ -n "${curline}" ]; then
        cur_height=$((${distance_top} + $((${curlinenum} + 1)) * ${line_height}));
        cur_font_left_offset=$((${cur_pic_width} - ${calc_width} - ${distance_right} + 10));
        #white shadow
        stroke_color="#000000ff";
        if [ "!" = "${curline:0:1}" ]; then
            stroke_color="#d80000ff";
            curline="${curline:1}";
        fi;
        #text-shadow
        #conv_lines="${conv_lines} -font \"${FONT}\" -strokewidth 12 -stroke '#ffffff60' -pointsize ${font_size} -draw \"text ${cur_font_left_offset},${cur_height} '${curline}'\"";
        conv_lines="${conv_lines} -stroke none -fill '#ffffff50' -draw \"roundrectangle $((${cur_font_left_offset} - 4)),$((${cur_height} - 17)),$((${cur_font_left_offset} + ${char_width} * $(wc -c <<< "${curline}") - 4)),$((${cur_height} + ${line_height} - 20)) 5,5\""
        conv_lines="${conv_lines} -font \"${FONT}\" -strokewidth 1 -stroke '${stroke_color}' -pointsize ${font_size} -draw \"text ${cur_font_left_offset},${cur_height} '${curline}'\"";
    fi;
    let curlinenum++;
done <<< "${connected_usb}";
#thanks to https://stackoverflow.com/questions/20858338/how-to-draw-text-and-shadow-it-in-imagemagick#20861391
bash -c "convert \"${cur_pic}\" ${conv_lines} -quality 90 \"${background_path}\""
# just set background image, based on uptime (since systemd doesn't have a nice
#   variable available to tell us that we're running for the very first time
DBUS_PATH="org.gnome.desktop.background";
DBUS_OBJ_NAME="picture-uri";
old_background_path="$(gsettings get $DBUS_PATH $DBUS_OBJ_NAME )";

MATCHED_PATH="$(grep -q "{background_path}" <<< "${old_background_path}")";
# Also use randomness to be setting/forcing the background occassionally,
#   avoids permannent stalling of old background.
#  Random is between 0 and 32256, so 10700 is about every third time
if test -z "${MATCHED_PATH}" || test $RANDOM -lt 10700; then
    echo "Calling gsettings, to set the path to the background (file://${background_path}).";
    gsettings set $DBUS_PATH $DBUS_OBJ_NAME "file://${background_path}";
else
    echo "No need to invoke 'gsettings set' as the Desktop background has already been set";
fi;
