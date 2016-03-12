#!/bin/bash

print_image(){
# $1 filename $2 decay time $3 mesh number $4 flux or error

echo $1 | tr "_" " " | awk '{print $9}'
ranges=`echo $1 | tr "_" " " | awk '{print $9" MeV"}'`
ranges2=`echo $1 | tr "_" " " | awk '{print $9}'`

file=$(basename "$1" .png)

echo "\begin{figure}[ht!]"
echo "\centering"
echo "\includegraphics[trim={0cm 9cm 0cm 10cm},clip,scale=0.75]{../plots/final_model_nob4c/{$file}.png}"
echo '\label{fig:source_dc$2_no4bc_'$ranges2'}'
echo '\caption{The shutdown photon source for the baseline case for decay time '$2' in the energy ranges '$ranges'}'
echo "\end{figure}"
}

print_image_total(){
# $1 filename $2 decay time 

file=$(basename "$1" .png)

echo "\begin{figure}[ht!]"
echo "\centering"
echo "\includegraphics[trim={0cm 9cm 0cm 10cm},clip,scale=0.75]{../plots/final_model_nob4c/{$file}.png}"
echo "\label{fig:source_dc$2_no4bc}"
echo '\caption{The total shutdown photon source for the baseline case for decay time '$2'}'
echo "\end{figure}"
}

rm src_dc?.tex
for (( i = 1 ; i <= 3 ; i++ )) ; do 
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_0.00E0-1.00E-2_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.00E-2-2.00E-2_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_2.00E-2-5.00E-2_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_5.00E-2-1.00E-1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.00E-1-2.00E-1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_2.00E-1-3.00E-1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_3.00E-1-4.00E-1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_4.00E-1-6.00E-1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_6.00E-1-8.00E-1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_8.00E-1-1.00E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.00E0-1.22E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.22E0-1.44E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.44E0-1.66E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.66E0-2.00E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_2.00E0-2.50E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_2.50E0-3.00E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_3.00E0-4.00E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_4.00E0-5.00E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_5.00E0-6.50E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_6.50E0-8.00E0_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_8.00E0-1.00E1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.00E1-1.20E1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.20E1-1.40E1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.40E1-2.00E1_MeV\).png $i >> src_dc$i.tex
    print_image Photon_Source_Density_Decay_Time_"$i"_\(Energy_Range:_1.40E1-2.00E1_MeV\).png $i >> src_dc$i.tex
    print_image_total Photon_Source_Density_Decay_Time_"$i"_All_Energy_Groups.png $i >> src_dc$i.tex
done


#print_image Photon_Dose_Rate_Decay_Time_1_Mesh_1.png 1 

