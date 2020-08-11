# takeshape/.github

PM glue for the org.

## Label Sync

**`.github/workflows/label-sync.yml`**

This workflow syncs labels available for issues across org repos. Choose which repos are synced by editing the `labels/repos` file. Edit the labels and their descriptions in `labels/labels.yml`.

## Workflow Sync

**`.github/workflows/workflow-sync.yml`**

Sync workflows and related files. Right now just syncs the `housekeeping.yml` workflow which has a number of jobs for adding connections and properties for issues and PRs.
