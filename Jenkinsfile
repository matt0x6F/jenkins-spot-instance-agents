node('master'){
    stage('Validate YAML'){
        checkout scm
        "tests/validate_yaml.sh".execute()
    }
}
