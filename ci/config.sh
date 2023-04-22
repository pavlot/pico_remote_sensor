#!/usr/bin/env bash

CONFIG_DIR=$(dirname "$0")
LOCAL_CONFIG=${CONFIG_DIR}/config.local.sh
if [ -f ${LOCAL_CONFIG} ]; then
    echo Including local config file: ${LOCAL_CONFIG}
    . ${LOCAL_CONFIG}
fi

PROJECT_NAME=pico_remote_sensor
KICAD_SRC_DIR=${BASEDIR}/kicad
PRODUCTION_DIR=${BASEDIR}/photoresisting_production
SHEMATICS_FILE=${KICAD_SRC_DIR}/${PROJECT_NAME}.kicad_sch
PCB_FILE=${KICAD_SRC_DIR}/${PROJECT_NAME}.kicad_pcb

DRILL_FILE=drill/r_transmitter-drill.drl
DRILL_OUT=r_transmitter-drill.ngc
OUTPUT_DIR=drill

PCB2GCODE_BIN=/home/rsh/bin/pcb2gcode-2.5.0/pcb2gcode

# Look for kibot binary
if [ -z "${KIBOT_BIN}" ]; then
    KIBOT_BIN=$(which kibot)
fi
if [ -z "${KIBOT_BIN}" ]; then
    echo No kibot binary found, please provide path to it with KIBOT_BIN env variable
fi
# End of Look for kibot binary
