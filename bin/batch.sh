#!/bin/sh
conf_file=${1:-"conf/batch.yaml"}

set -x

java ${JAVA_OPTS} -cp "assembly/target/*:core/target/*:frontend/target/*:contrib/target/*" macrobase.MacroBase pipeline $conf_file
