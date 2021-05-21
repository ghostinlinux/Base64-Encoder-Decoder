#!/bin/bash
echo
printf '[\033[1;92m?\033[0m\033[1m] What you want to do \033[1;91mEncode\033[0m\033[1m/\033[1;92mDecode\033[0m\033[1m ? [E/d] '
read input

if [[ $input = "e" ]] || [[ $input = "E" ]] || [[ $input = "Encode" ]] || [[ $input = "encode" ]] || [[ $input = "ENCODE" ]]
        then echo
echo "Enter Some text to encode"
read text
etext=`echo $text | base64`
echo "Encoded text is : $etext"
echo

elif [[ $input = "d" ]] || [[ $input = "D" ]] || [[ $input = "Decode" ]] || [[ $input = "decode" ]] || [[ $input = "DECODE" ]]
        then echo
echo "Enter Your Code To Decode"
read code
ecode=`echo $code | base64 --decode`
echo "Decoded text is : $ecode"
echo
fi