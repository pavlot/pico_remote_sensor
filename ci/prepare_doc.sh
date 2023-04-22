#!/usr/bin/env bash
BASEDIR=$(dirname "$0")/..
. ${BASEDIR}/ci/config.sh

cd ${DOC_DIR}

# Run kibot
${KIBOT_BIN} -c ${DOC_DIR}/build.kibot.yaml -b ${PCB_FILE} -e ${SHEMATICS_FILE}
