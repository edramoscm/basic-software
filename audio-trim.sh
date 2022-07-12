#!/bin/sh

read -p 'Arquivo a ser cortado: ' INPUT
read -p 'Momento inicial do corte: ' INIT
read -p 'Momento final do corte: ' FIN
read -p 'Nome do arquivo final com extensão: ' OUTPUT


ffmpeg -i $INPUT -ss $INIT -to $FIN -c copy $OUTPUT
