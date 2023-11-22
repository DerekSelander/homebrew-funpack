# Apple Homebrew tools
homebrew tools, everything here is considered beta, tool options can change without notice, features can break, you could see "WTF Derek" in console output, etc. Most of these tools will only work for arm64 hardware.  I am toying with the idea of doing x64, but tbd.

## dipc
The missing [XPoCe](http://newosxbook.com/tools/XPoCe2.html) for ARM64

## dinfo 

Query process information/dump assemble for processes at runtime 
 
[dinfo_help]::
```bash

```


## dsdump
Updated binaries from [here](https://github.com/DerekSelander/dsdump)

## mscan
A C++ LLDB plugin that can scan memory for strings or byte sequences 


## Setup 
In order to make the most of these tools, you need to disable SIP on your macOS machine. If you plan on introspecting Apple executables, you also need to enable experimental 3rd party ARM64e support. Not doing so will crash Apple applications. To enable experimental arm64e support do the following after disabling SIP:

```bash
sudo nvram boot-args=-arm64e_preview_abi
``` 

If you don't want to disable Apple executables and only introspect 3rd party developers, you can just pull out the arm64 slice via a:
```
lipo -o /tmp/dipc.arm64 -thin arm64 `which dipc` 
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
