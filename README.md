# GitHub-Action-Demo
This is an demo project to demonstrate how GitHub Action works.

## What is GitHub Action?
GitHub Actions is an automation and CI/CD (Continuous Integration/Continuous Deployment) platform provided by GitHub. It allows you to define workflows and automate various tasks within your software development process.

Some common use cases for GitHub Actions include:
1. Continuous Integration (CI): You can use GitHub Actions to build, test, and validate your code automatically whenever changes are pushed to your repository. This helps ensure that your codebase remains in a working state and catches any errors or issues early in the development process.
2. Continuous Deployment (CD): GitHub Actions can be used to automate the deployment of your applications to different environments, such as staging or production. This allows you to define deployment workflows that are triggered after successful CI runs, ensuring that your code is automatically deployed to your desired target environments.
3. Code Quality and Security Checks: GitHub Actions can integrate with various code analysis tools to perform checks on your codebase for code quality, security vulnerabilities, and adherence to coding standards. You can set up workflows to automatically run these checks and provide feedback on any potential issues.
4. Release Management: GitHub Actions can help automate the release process of your software by creating and publishing release artifacts, generating release notes, and notifying stakeholders about new releases.

### Key Elements of GitHub Actions:
- Workflows, Jobs & Steps
- Workflows
    - Attached to a GitHub repository
    - Contain one or more Jobs
    - Triggered upon Events
- Jobs
    - Define a Runner (execution environment)
    - Contain one or more Steps
    - Run in parallel (default) or sequential
    - Can be conditional
- Steps
    - Execute a shell script or an Action
    - Can use custom or third-party actions
    - Steps are executed in order
    - Can be conditional

### GitHub Actions: Availability & Pricing
In public repositories, you can use GitHub Actions for free. For private repositories, only a certain amount of monthly usage is available for free - extra usage on top must be paid.
- The exact quotas and payment details depend on your GitHub plan, a detailed summary can be found here: https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions
- If you can't find an "Actions" tab in your GitHub repository, you can should enable them as described here: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/enabling-features-for-your-repository/managing-github-actions-settings-for-a-repository