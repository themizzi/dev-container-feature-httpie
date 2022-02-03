> ⚠️ NOTE: This functionality is in PREVIEW. Please note it is subject to (heavy) modification!  

# Development container `features` Template

To create your own remote [**dev container features**](https://code.visualstudio.com/docs/remote/containers#_dev-container-features-preview), use this repo as a template.  This repo contains two example "features" called `helloworld` and `color`.  

These features can then be declared in your `devcontainer.json` file for use in the Remote-Containers extension or GitHub Codespaces.


# Features In This Repo (Directory)

### httpie

This feature installs the most excellent curl substitue, HTTPie (https://httpie.io/).

## Include HTTPie features in your project's devcontainer 

To include your feature in a project's devcontainer, provide the following `features` like so.

```jsonc
"image": "mcr.microsoft.com/vscode/devcontainers/base",
features: {
    "themizzi/dev-container-feature-httpie/httpie": {
        "apt_update": true # most containers will require running apt update to install pip
    },
}
```

