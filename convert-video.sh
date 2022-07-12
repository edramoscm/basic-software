#!/bin/zsh

read -p 'Arquivo a ser convertido, com a extensão: ' INPUT
read -p 'Nome do output, com a extensão: ' OUTPUT

ffmpeg -i $INPUT -c:v libx264 -crf 21 -preset faster -pix_fmt yuv420p -maxrate 5000K -bufsize 5000K -vf 'scale=if(gte(iw\,ih)\,min(1920\,iw)\,-2):if(lt(iw\,ih)\,min(1920\,ih)\,-2)' -movflags +faststart -c:a aac -b:a 160k $OUTPUT
