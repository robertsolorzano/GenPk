#!/bin/bash

OPTION=$(whiptail --title "GenPk - Data security script" --menu "Choose an option:" 20 78 7 \
"1" "Base64, 32 bytes" \
"2" "Base64, 64 bytes" \
"3" "Hex, 32 bytes" \
"4" "Hex, 64 bytes" \
"5" "Generate Random Password" \
"6" "Encrypt a File" \
"7" "Decrypt a File" 3>&2 2>&1 1>&3)

case $OPTION in
1)
    echo "Generating a 32-byte Base64 secret..."
    openssl rand -base64 32
    ;;
2)
    echo "Generating a 64-byte Base64 secret..."
    openssl rand -base64 64
    ;;
3)
    echo "Generating a 32-byte Hex secret..."
    openssl rand -hex 32
    ;;
4)
    echo "Generating a 64-byte Hex secret..."
    openssl rand -hex 64
    ;;
5)
    echo "Generating a random password..."
    openssl rand -base64 12
    ;;
6)
    echo "Select the file to encrypt:"
    filename=$(zenity --file-selection --title="Select a File to Encrypt")
    if [[ -n "$filename" ]]; then
        openssl aes-256-cbc -salt -pbkdf2 -iter 10000 -in "$filename" -out "$filename.enc" && \
        shred -u "$filename" && \
        zenity --info --text="File encrypted to $filename.enc and original file securely deleted."
    else
        zenity --error --text="No file selected."
    fi
    ;;
7)
    echo "Select the encrypted file to decrypt:"
    filename=$(zenity --file-selection --title="Select a File to Decrypt")
    if [[ -n "$filename" ]]; then
        outputfilename="${filename%.enc}"
        openssl aes-256-cbc -d -pbkdf2 -iter 10000 -in "$filename" -out "$outputfilename" && \
        shred -u "$filename" && \
        zenity --info --text="File decrypted to $outputfilename and encrypted file securely deleted."
    else
        zenity --error --text="No file selected."
    fi
    ;;

*)
    echo "No valid option was chosen."
esac
