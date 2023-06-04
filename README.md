# GitHub-Action-Demo

### How to run the demo React app
Starts the development server using Vite.
```
npm run dev
```
Runs the project's tests using the Vitest testing framework.
```
npm test
```

### Events (Workflow Triggers)

Repository-related
- push - Pushing a commit
- pull_request - Pull request action (opened, closed, ...)
- create - A branch or tag was created
- fork - Repository was forked
- issues - An issue was opened, deleted, ...
- issue_comment - issue or pull request comment action
- watch - Repository was starred
- discussion - Discussion action (created, deleted, ...)
- More!
  Other
- workflow_dispatch - Manually trigger workflow
- repository_dispatch - REST API request triggers workflow
- schedule - Workflow is scheduled
- workflow_call - Can be called by other workflows

GitHub documentation on Events that trigger workflows: https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#pull_request


### Using Actions in Workflows


What are Actions?

GitHub Actions are a key component of GitHub's automation and CI/CD platform.
Actions are custom or third-party applications that perform complex and frequently repeated tasks.
- You can build you own Actions but you can also use official or community Actions.
- The alternative to using an Action is to define a command using the "run" keyword in a YAML file.
    - Command ("run") - A (typically simple) shell command that's defined by you.
- Actions can be official, community-built, or created by individuals and distributed through the GitHub Marketplace.
    - GitHub Action Marketplace: https://github.com/marketplace?type=actions


### Checking Out Code in Workflows

We will use the official GitHub Action Checkout for checks-out your repository under $GITHUB_WORKSPACE, so your workflow can access it.

Link: https://github.com/marketplace/actions/checkout

Some key points to remember:
- The "uses" keyword is used to specify the action that you want to use in GitHub Actions.
- Specifying a version for the action can be useful to ensure consistency and avoid breaking changes.
- The "with" keyword is used to provide configuration options for the action.


### Jobs: Parallel vs Sequential

Running testing and deploying jobs sequentially rather than in parallel is beneficial when we only want to deploy if testing is successful.

Some key points to remember:
- The "needs" keyword is used to specify that a job needs another job to finish before it can start execution.
- Jobs can be configured to wait for multiple jobs to finish by using brackets.
- If the first job fails, such as the test job, the subsequent job (deploy) will not start.
- The overall workflow will take longer if the jobs are running sequentially instead of in parallel.