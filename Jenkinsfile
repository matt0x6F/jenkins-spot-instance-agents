node('master'){
    def workspace = pwd()

    stage('Validate YAML'){
        checkout scm
        "${workspace}/tests/validate_yaml.sh".execute()
    }
}
