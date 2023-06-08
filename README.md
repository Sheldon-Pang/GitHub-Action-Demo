## About this Branch

Workflows can be triggered by events such as pushes or pull requests, and conditions and filters can be applied to control the triggering of workflows. In this branch, we will take a deeper look into the workflows and events, and exploring event types, activity types.


## Explore Activity types

GitHub Actions provides enhanced control for event configurations, allowing more precise triggering of workflows. While basic event triggers like push or pull request can be used, there are situations where further granularity is required. Activity types, a key feature of GitHub Actions, enable specifying specific variations of events to trigger workflows. For example, the pull request event offers activity types that determine whether all pull request actions or specific actions like opening, closing, or editing a pull request should trigger the workflow. Additionally, event filters provide another level of control by allowing the filtering of events based on certain conditions. By utilizing event filters, workflows can be configured to trigger only for specific branches, such as the main branch, while excluding others.

### Key Points:
- Activity types allow specifying specific variations of events to trigger workflows.
- Event filters can be used to filter events based on certain conditions.


## In This Project - Activity Types

In this branch example, we using the pull request event as an example. You can specify the activity types to trigger the workflow, such as open or reopened a pull request.
```
on:
  pull_request: # This is the event
    types: # This specify the event types
      - opened
      - reopened
```

Note: By default, Pull Requests based on Forks DO NOT trigger a workflow. The Reason is because everyone can fork and open pull request, and it can be malicious workflow runs and result in excess cost from running the workflow, etc. You can manually approve the workflow, or add the person as a collaborator.

Read more on pull request or other events and activity types: https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#pull_request


## In This Project - Event Filters

You can also use You can use the branches or branches-ignore filter to configure your workflow to only run on pull requests that target specific branches.
```
on:
  pull_request:
    types:
      - opened
      - reopened
    branches: # This specify the target branches
      - 'everything-workflows-and-events'
```

To read more on which key words/syntax to use for different event filters: https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#onpull_requestpull_request_targetbranchesbranches-ignore


## Skip Workflow

Add key words in you commit message
- [skip ci]
- [ci skip]
- [no ci]
- [skip actions]
- [actions skip]

Read more on this: https://docs.github.com/en/actions/managing-workflow-runs/skipping-workflow-runs













