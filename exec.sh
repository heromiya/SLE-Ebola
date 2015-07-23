for ARG in `cat ROI.lst`; do
        export ROI=`echo $ARG | cut -f 1 -d '|'`
        export XMIN=`echo $ARG | cut -f 2 -d '|'`
        export YMIN=`echo $ARG | cut -f 3 -d '|'`
        export XMAX=`echo $ARG | cut -f 4 -d '|'`
        export YMAX=`echo $ARG | cut -f 5 -d '|'`
    for FILE in MCD12Q1_V51_LC1.2012.tif MT.vrt lspop2010.tif; do
        export FILE
        make maps/${ROI}_${XMIN}_${YMIN}_${XMAX}_${YMAX}.$FILE.png
    done
done

exit 0
