set terminal png size 500,500 enhanced font 'Verdana,10'
set output 'CompareSuperMikeNSwatScaleUp.png'
set key below
set ylabel '{/Helvetica-Oblique Execution time normalized to SuperMikeII}'
set style fill solid
set style data histograms
set yrange [0:2]
plot "CompareSuperMikeSwatScaleUp.dat" using 2:xtic(1) lt rgb "#406090" title 'SuperMikeII(32GBMem+1HDD):15DN[BaseLine]',\
     "" using 3 lt rgb "#40FF00" title 'SwatIII-FullScaleup-SSD(256GBMemory+7SSD):2DN',\
     "" using 4 lt rgb "#400000" title 'SwatIII-FullScaleup-HDD(256GBMemory+7HDD):2DN'

