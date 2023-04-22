#!/usr/bin/env bash
BASEDIR=$(dirname "$0")/..
. ${BASEDIR}/ci/config.sh

cd ${PRODUCTION_DIR}

${KIBOT_BIN} -c ${PRODUCTION_DIR}/build.kibot.yaml -b ${PCB_FILE} -e ${SHEMATICS_FILE}
#sh ${BASEDIR}/generate_drill_ngc.sh

