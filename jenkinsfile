pipeline {
    agent any
    parameters {
        string(name: 'GitHub_URL', description: 'Enter the Github URL:')
        string(name: 'Branch', description: 'Enter the branch name')
        choice(choices:'java\npython\ndotnet\nnodejs\nreacjs\nangularjs', name: 'lang')
    }
    stages {
        stage('Multi_Lang_Build') {
            steps {
                echo "${params.lang}"
                script {
                    if (params.lang == 'java') {
                     echo "${params.lang}"
                     echo "${params.input}"
                     sh "docker build --network=host -t javabuild --build-arg PARAM1=${GitHub_URL} --build-arg PARAM2=${Branch} -f dockerfilejava ."
                    }
                    else if (params.lang == 'python') {
                      echo "${params.lang}"
                      echo "${params.input}"
                      echo "${params.branchInput}"
                    }
                    else if (params.lang == 'dotnet') {
                      echo "${params.lang}"
                      sh "docker build --network=host -t dotnet --build-arg PARAM1=${GitHub_URL} --build-arg PARAM2=${Branch} -f dockerfiledotnet ."
                    }
                     else if (params.lang == 'nodejs') {
                      echo "${params.lang}"
                    }
                     else if (params.lang == 'reactjs') {
                      echo "${params.lang}"
                    }
                     else if (params.lang == 'angularjs') {
                      echo "${params.lang}"
                    }
                }
            }
        }
    }
}
