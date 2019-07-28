# Building a Docker image and pushing to the Dockerhub/ECR using Jenkins

> Here we will learn how to write the python-flask helloworld code and build a docker file and will push it to the ECR and DockerHub.
- Step1: Create a helloworld.py pyhton flask file.
- Step2: Create a Dockerfile which will have all the configuration and the helloworld.py file with with it will build the docker image.
- Step3: Test this configuration in your local machine and use the below script to test Dockerfile configuration in your local machine.
  - docker build -t <imagename>:<tagname> .
- Step4: If you able to build the image successfully then push the code in the git branch and try to automate the same using Jenkins.
- Step5: Use the freestyle jenkins method for creating a pipe line.
  - Under Source Code Management enter the Repository URL and the branch from where the code would be fetched to the jenkins workspace.
  - Under Built section use Docker BUild and Publish option(you have to download this plug-in from manage jenkins setting). Enter the Repository name and the tag name with which it will  create a docker image.
  - Make sure you create a Repository in the ECR/Dockerhub with the same name with which you are crearing a docker image. It will ensure that the image will be pushed to the correct destination which would be mentoned by the docker image name. 
  - E.g. In case of ECR, the patteren would be 
 <AWS Account ID>.dkr.ecr.us-east-1.amazonaws.com/jenkinstest
 In case of Dokerhub, the pattern would be 
 ashishk6 / jenkinstest
  - Enter the respective credentials using which the jenkins will login in to the repository and push the docker image file.
- Step6: Click on Apply and Save and click on build Now to trigger the pipeline.

> This a small demo for creating a jenkins pipeline that will take the code from git repository and create the image and push it to the Container repository. 

-- Use the below documention to excel more in this field:
 -  [DockerHUb](https://docs.docker.com/docker-hub/)
 - [Elastic Container(ECR)](https://docs.aws.amazon.com/ecr/index.html)
 - [Jenkins](https://jenkins.io/doc/)

> Note: Try to grab the understanding via hands-on. This will no only help you getting the concept but also help you to understand the flow and process.
 

