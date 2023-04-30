
## Deps

- cmake
- fpc
- zeromq
- czmq


## Build

```console
svn checkout -r HEAD https://svn.code.sf.net/p/electricdss/code/trunk/Version8/Source/ OpenDSS
svn checkout -r HEAD http://svn.code.sf.net/p/klusolve/code/ klusolve
./build-fncs.sh
./build-HELICS.sh
./build-klusolve.sh
./build-linenoise.sh
```