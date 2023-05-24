# Apple Homebrew tools
homebrew tools, everything here is considered beta, tool options can change without notice, features can break, you could see "WTF Derek" in console output, etc. But there is some neat stuff now that you found this repo.

## dipc
The missing [XPoCe](http://newosxbook.com/tools/XPoCe2.html) for ARM64

## dinfo 
Query process information/dump assemble for processes at runtime 

## dsdump
Updated binaries from [here](https://github.com/DerekSelander/dsdump)

## mscan
A C++ LLDB plugin that can scan memory for strings or byte sequences 


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
brew install derekselander/funpack/mscan
```

### mscan
mscan is a c++ lldb plugin designed to search for memory. Once installed find the location of mscan and put the path in your ~/.lldbinit file

```
echo "plugin load \"`which mscan`\"" >> ~/.lldbinit
```
