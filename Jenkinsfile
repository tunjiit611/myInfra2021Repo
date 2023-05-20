pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
    
        stage ("terraform init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        stage('Copy state to new backend') {
            steps {
            script {
            def userInput = input(
                id: 'copyState',
                message: 'Do you want to copy existing state to the new backend?',
                parameters: [
                    [$class: 'ChoiceParameterDefinition', choices: 'yes\no', description: 'Choose yes or no']
                ]
            )

            if (userInput == 'yes') {
                // Code to copy the state to the new backend
            } else {
                // Code to start with an empty state
            }
        }
    }
}
        
        stage ("plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage (" Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
    
