> ⚠️ NOTE: This functionality is in PREVIEW. Please note it is subject to (heavy) modification!  

#  HTTPie for devcontainers

- [HTTPie for devcontainers](#httpie-for-devcontainers)
  - [Features In This Repo](#features-in-this-repo)
    - [httpie](#httpie)
  - [Include HTTPie features in your project's devcontainer](#include-httpie-features-in-your-projects-devcontainer)

## Features In This Repo

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

