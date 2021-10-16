# git-plugin
A custom git plugin to clone a public git repository and prints the last commit.

# Running it as part of CIE pipeline
```console
- step:
    identifier: clone
    name: clone
    type: Plugin
    spec:
        image: "shubham149/git-plugin"
        settings:
            path: codebase
            repo_url: https://github.com/shubham149/git-plugin.git
            branch: main
```

# Run it locally
This clones a git repo inside codebase folder.

```console
docker run --rm \
  -e PLUGIN_PATH=codebase \
  -e PLUGIN_REPO_URL=https://github.com/shubham149/git-plugin.git \
  -e PLUGIN_BRANCH=main \
  shubham149/git-plugin
```