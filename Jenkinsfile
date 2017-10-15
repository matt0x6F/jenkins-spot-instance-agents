node('master'){
    def workspace = pwd()

    stage('Validate YAML'){
        checkout scm
        echo "Setting permissions on ${workspace}/tests/validate_yaml.sh"
        sh "chmod +x ${workspace}/tests/validate_yaml.sh"

        echo "Executing shell script ${workspace}/tests/validate_yaml.sh"
        sh "bash ${workspace}/tests/validate_yaml.sh"
    }
    stage('Clean Workspace'){
      cleanWs()
    }
}
