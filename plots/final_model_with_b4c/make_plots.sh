#!/bin/bash

print_image(){
# $1 filename $2 decay time $3 mesh number $4 flux or error
echo "\begin{figure}[ht!]"
echo "\centering"
# echo "\includegraphics[trim={0cm 9cm 0cm 10cm},clip,scale=0.75]{../plots/final_model_nob4c/$1}"
echo "\includegraphics[trim={0cm 9cm 0cm 10cm},clip,scale=0.75]{../plots/final_model_nob4c/$1}"
echo "\label{fig:photons_dc$2_no4bc_m$3_$4}"
if [ $4 == "flux" ] ; then
    echo '\caption{The total photon dose from the B$_4$C case for decay time '$2' for mesh '$3'}'
else
    echo '\caption{The error in photon dose from the B$_4$C case for decay time '$2' for mesh '$3'}'
fi
echo "\end{figure}"
}

rm dc?.tex
for (( i = 1 ; i <= 3 ; i++ )) ; do 
    for (( j = 1 ; j <= 7 ; j++ )) ; do
	print_image Photon_Dose_Rate_Decay_Time_$i"_Mesh_"$j.png $i $j flux >> dc$i.tex
	print_image Photon_Dose_Relative_Error_Decay_Time_$i"_Mesh_"$j.png $i $j error >> dc$i.tex
    done
done


#print_image Photon_Dose_Rate_Decay_Time_1_Mesh_1.png 1 

