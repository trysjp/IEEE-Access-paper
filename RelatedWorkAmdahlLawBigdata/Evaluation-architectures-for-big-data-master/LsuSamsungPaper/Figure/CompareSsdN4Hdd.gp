set terminal png size 500,500 enhanced font 'Verdana,10'
set output 'CompareSsdN4Hdd.png'
set key below
set ylabel '{/Helvetica-Oblique Execution time normalized to SuperMikeII}'
set yrange [0:1]
set style fill solid
set style data histograms
plot "CompareSsdN4Hdd.dat" using 2:xtic(1) lt rgb "#406090" title '1-HDD',\
     "" using 3 lt rgb "#40FF00" title '2-HDD',\
     "" using 4 lt rgb "#400000" title '4-HDD',\
     "" using 5 lt rgb "#3000F0" title '1-SSD'

