DRILL_FILE=drill/r_transmitter-drill.drl
DRILL_OUT=r_transmitter-drill.ngc
OUTPUT_DIR=drill

PCB2GCODE_BIN=/home/rsh/bin/pcb2gcode-2.5.0/pcb2gcode

$PCB2GCODE_BIN \
--drill=$DRILL_FILE \
--metric=true --metricoutput=true \
--nog64=false --optimise=0.0000 --tile-x=1 --tile-y=1 \
--tolerance=0.0100 --zchange=10.0000 --zchange-absolute=false \
--zero-start=false --zsafe=3.0000 --drill-feed=300 --drill-side=auto \
--drill-speed=10000 --milldrill=false --nog81=true --nog91-1=true \
--onedrill=true --zdrill=-1.7000 --drill-output $DRILL_OUT --output-dir=$OUTPUT_DIR
