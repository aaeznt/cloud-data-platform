# Cloud Data Platform

### This project includes Terraform code and a Buildspec file that can be used to provision and modify AWS cloud resources. We have set up a CI/CD pipeline that is used to build and apply this terraform project using a solution similar to the following diagram:

![image](https://user-images.githubusercontent.com/66182966/123552884-f77be180-d73d-11eb-989d-f91cfa80059f.png)

The deployment steps are as follows:

1. When a developer's feature branch is merged with the development or master branches in the `cloud-data-platform` repository, CodePipeline immediately detects that there has been an update to the code in the repository.
2. CodePipeline automatically invokes CodeBuild and downloads the source files from the GitHub repository onto an AWS-mananged CodeBuild server.
3. CodeBuild installs and executes our Terraform code according to the build specification.
4. Terraform stores the state files in S3 and state lock information in DynamoDB.
5. The cloud infrastructure and resources specified in the Terraform code are deployed to the team's AWS environment.