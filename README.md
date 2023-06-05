# About this branch
This is an demo project to demonstrate how Docker Containers work with GitHub Action.

## Why use Containers with GitHub Action?
Using containers with GitHub Actions offers several advantages. Containers provide a way to define a fully controlled and predefined environment for running your code or performing tasks. With containers, you have the flexibility to define the installed software, configuration, and setup steps that best suit your needs. This allows you to create a consistent and reproducible environment that can be easily shared and reused across different workflows. Containers also offer isolation, ensuring that your code runs consistently regardless of the underlying runner machine. By leveraging containers in GitHub Actions, you gain full control over your development and deployment environment, enabling you to create consistent, portable, and efficient workflows.

## About  Environment Variables

Variables in GitHub Actions provide a way to store and reuse configuration information. They can be used to store data like compiler flags, usernames, or server names. Variables can be defined at the workflow level using the env key or at the organization, repository, or environment level. Default environment variables are automatically set by GitHub. However, it's important to note that by default, variables are unmasked in build outputs. For greater security with sensitive information, encrypted secrets should be used instead.

Official Documentation: https://docs.github.com/en/actions/learn-github-actions/variables#default-environment-variables

## About this Project

Containers provide a controlled environment for running jobs or steps. While it's not always necessary to use containers, they can be useful when you need full control over the environment. Containers are based on images, which can be public or custom. In GitHub Actions, you can specify the container image using the container or image key in the job definition.

Environment variables specific to the container image can be configured using the env field. Running steps in a container allows for consistent execution in a specific environment, and GitHub Actions supports various features within containers.

Example docker job:
```
container: # Defines the Docker container that will be used to run the job.
    image: node:16 # The Docker image that will be used to run the job.
```

Explore Official Docker  Images: https://hub.docker.com/search?image_filter=official&type=image
