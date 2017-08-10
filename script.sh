#!bin/bash

declare -a ARRAY=("Primeira_Prova" "Segunda_Prova" "Terceira_Prova")

for ((i=0; i<3; i++)) do
	mkdir ${ARRAY[i]}
	mkdir ${ARRAY[i]}/img
done;


