# Apple Homebrew tools
homebrew tools, everything here is considered beta


## Setup 
In order to make the most of these tools, you should disable SIP on your macOS machine. You should also enable experimental 3rd party ARM64e support (for these tools). Not doing so will crash Apple applications. To enable experimental arm64e support do the following:

```bash
sudo nvram boot-args=-arm64e_preview_abi
``` 

## Install



```bash
brew tap derekselander/funpack
brew install derekselander/funpack/dipc
brew install derekselander/funpack/dinfo
brew install derekselander/funpack/dsdump
```
