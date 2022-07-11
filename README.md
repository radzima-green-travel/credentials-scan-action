# credentials-scan-action

Action that scans for leaked credentials

## Example usage
```
on: push
name: Main Workflow
jobs:
  awsCredsScan:
    name: AWS creds scanner
    runs-on: ubuntu-latest
    steps:
    - name: AWS creds scan
      uses: radzima-green-travel/credentials-scan-action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
