#!/bin/bash

declare -i RESULT=0
set +e # Don't exit on error. Collect the errors instead.
YAML_PATH_LIST=`ls | grep -F '.yaml'`
echo 'YAML files to check syntax:'; echo "$YAML_PATH_LIST"; echo "";
for YAML_PATH in $YAML_PATH_LIST; do
   ruby -e "require 'yaml'; YAML.load_file('${YAML_PATH}')"
   RESULT+=$?
done
exit $RESULT
