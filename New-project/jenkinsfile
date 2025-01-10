pipeline{
    agent any // specifies where the pipeline runs ( any available agent)
    environment{
        // define global environment variables (optionl)
        APP_ENV = 'production'
        APP_VERSION = '1.0.0'
     options{
        // configure pipeline-level option (optional)
        timeout(time: 30, units: 'MINUTES') // Abort after 30 minutes
        timestamp()                         // Add timestamp to logs
     }
     stage {
        // === 1. preparation Stage ====
        stage('preapration') {
            step {
                echo 'clean worksapce...'
                cleaning() // clean the workspace before starting
            }
        }
     } // === 2. checkout stage ===
     satge('checkout') {
        steps {
            echo ' cloning repository...'
            git branch 'main', url: 'https://github...../repo.git'
        }
     } // === 3. build stage ===
     stage('build'){
        step {
            echo ' building the application...'
            sh './build.sh' // run a shell script to buid the app
        }
     } // === 4. test stage ===
     stage('test'){
        step {
            echo 'running test...'
            sh './test.sh' // Run test script
        }
     } // === 5. static code Analysis Stage ===
     stage('Code Analysis'){
        step{
            echo 'performing static code analysis...'
            sh './run-linter.sh' // Example: Run a linter or static analysis tool
        }
     } // === 6. package Stage ===
     stage('package') {
        step {
            echo 'packaging the application...'
            sh './package.sh' // package the application for deploymeent
        }
     } // === 7. deploy stage ===
     stage('Deploy'){
        step {
            echo 'Deploying to the production environemt...'
            sh './deploy.sh' // deploy the application
        }
     }post{
        // define action to run after the pipeline completes
        always{
            echo 'cleaning up workspace...'
            cleanWS() // Always clean the workspace
        }
    }success{
        step {
            echo 'pipeline succeeded! sending success notification'
            // Example: Send success notification
        }
    }failure {
        echo 'pipeline failed! sending failure notification...'
        // Example: send failure notification
    } 
    }
}
    
