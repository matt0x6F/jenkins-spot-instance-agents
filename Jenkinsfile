node('master'){
    def workspace = pwd()

    stage('Validate YAML'){
        checkout scm
        sh """
            print "Applying permissions to ${workspace}/tests/validate_yaml.sh"
            chmod +x ${workspace}/tests/validate_yaml.sh
           """
        "${workspace}/tests/validate_yaml.sh".execute()
    }
}
