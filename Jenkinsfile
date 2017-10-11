// select a slave based on the label 'docker'
node('master') {
  stage "Validate YAML"
  docker.image('ruby:2.3-alpine').inside {
    // run your command
    sh """
        GIT_DIFF_CMD="git diff --name-only --diff-filter=ACMR $OLD_REVISION $REVISION"
        declare -i RESULT=0
        set +e # Don't exit on error. Collect the errors instead.
        YAML_PATH_LIST=`$GIT_DIFF_CMD | grep -F 'hieradata/' | grep -F '.yaml'`
        echo 'YAML files to check syntax:'; echo "$YAML_PATH_LIST"; echo "";
        for YAML_PATH in $YAML_PATH_LIST; do
          ruby -e "require 'yaml'; YAML.load_file('${YAML_PATH}')"
          RESULT+=$?
        done
        exit $RESULT
    """
  }
}
