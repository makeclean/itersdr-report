#!/bin/bash
function converter() {
for i in `seq 1 3` ;  do
    echo $i
    convert -density 300 -trim dc$i.ps -quality 100 dc$i.png
    mv dc$i"-0.png" dc$i.png
    rm dc$i"-1.png"
    convert -density 300 -trim dc$i"_rel.ps" -quality 100 dc$i"_rel.png"
    echo "done"
done
}

cd ep
converter
cd ../up
converter 
cd ../lp
converter 
cd ..

