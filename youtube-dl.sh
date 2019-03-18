#!/bin/bash
echo " "
echo " Choose the format you want to download:"
echo " (1)Download 1080P Video and the best Audio with all subs"
echo " (2)Download Audio stream and transfer to mp3 format"
echo " (3)Download the best audio and the best audio with all subs (for low resolution video)"
echo " "
read choice
echo " You choose method No.$choice to download youetube"
echo "  "
echo " Input youtube URL you wanna download:"
echo " "
read URL
title=`youtube-dl -qe $URL`;echo " youtube-dl is starting to download \" $title \" "
echo " "
case $choice in
       1) youtube-dl -f 'bestvideo[height<=1080]+bestaudio[ext=m4a]' --write-sub --embed-sub --all-subs $URL;;
       2) youtube-dl --extract-audio --audio-format mp3 $URL;;
       3) youtube-dl --write-sub --embed-sub --all-subs -f best $URL;;
esac
