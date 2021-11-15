# takeshape/.github

Some glue for the org.

## Label Sync

**`.github/workflows/label-sync.yml`**

This workflow syncs labels available for issues across org repos. Choose which repos are synced by editing the `labels/repos` file. Edit the labels and their descriptions in `labels/labels.yml`.

## Files Sync

**`.github/workflows/files-sync.yml`**

Sync workflows and related config files. Right now the following files are synced across the org:

- `.github/workflows/housekeeping.yml` - all the jobs we want running everywhere for PM
- `.github/pr-labeler.yml` - config for the [PR Labeler](https://github.com/TimonVS/pr-labeler-action) action
- `.github/auto.json` - config for [Auto](https://github.com/intuit/auto)
- `.github/release-drafter.yml` - config for the [Release Drafter](https://github.com/marketplace/actions/release-drafter) action
