set terminal png size 500,500 enhanced font 'Verdana,10'
set output 'CompareSuperMikeNSwat.png'
set key below
set ylabel '{/Helvetica-Oblique Execution time normalized to SuperMikeII}'
set yrange [0:1]
set style fill solid
set style data histograms
plot "CompareSuperMikeNSwat.dat" using 2:xtic(1) lt rgb "#406090" title 'SuperMikeII(32GBMem+1HDD):15DN[BaseLine]',\
     "" using 3 lt rgb "#40FF00" title 'SwatIII-Storage(32GBMem+1SSD):15DN',\
     "" using 4 lt rgb "#400000" title 'SwatIII-Memory(256GBMem+1SSD):15DN'

