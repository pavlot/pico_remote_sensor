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
DOC_DIR=${BASEDIR}/doc
SHEMATICS_FILE=${KICAD_SRC_DIR}/${PROJECT_NAME}.kicad_sch
PCB_FILE=${KICAD_SRC_DIR}/${PROJECT_NAME}.kicad_pcb

DRILL_FILE=${PRODUCTION_DIR}/drill/${PROJECT_NAME}-drill.drl
DRILL_OUT=${PROJECT_NAME}-drill.ngc
DRILL_OUTPUT_DIR=${PRODUCTION_DIR}/drill

# Look for kibot binary
if [ -z "${KIBOT_BIN}" ]; then
    KIBOT_BIN=$(which kibot)
fi
if [ -z "${KIBOT_BIN}" ]; then
    echo No kibot binary found, please provide path to it with KIBOT_BIN env variable
    exit 1 
fi
# End of Look for kibot binary

# Look for pcb2gcode binary
if [ -z "${PCB2GCODE_BIN}" ]; then
    PCB2GCODE_BIN=$(which pcb2gcode)
fi
if [ -z "${PCB2GCODE_BIN}" ]; then
    echo No pcb2gcode binary found, please provide path to it with PCB2GCODE_BIN env variable
    exit 1 
fi
# End of Look for pcb2gcode binary
