# OpenDSSCmd Linux Build

Helper scripts to build OpenDSSCmd in Linux

## Dependencies

_**NOTE:**_ The requirements versions above are just for reproducibility purposes. Any greater version of them should work.

- `gcc` `v12.2.1`;
- `cmake` `v3.26.3`;
- `fpc` `v3.2.2`;
- `zeromq` `v4.3.4`;
- [`czmq`](https://github.com/zeromq/czmq) `AUR package 20210117-1`.


## Build

_**NOTE:**_ If you want the newest OpenDSS version, change the `-r` option from `3603` to `HEAD` in OpenDSS's `svn` command.

```console
svn checkout -r 3603 https://svn.code.sf.net/p/electricdss/code/trunk/Version8/Source/ OpenDSS
svn checkout -r 56 http://svn.code.sf.net/p/klusolve/code/ klusolve
./build-fncs.sh
./build-HELICS.sh
./build-klusolve.sh
./build-linenoise.sh
./build-opendss.sh
```

## License and Copyrights

The scripts in the root of this repository are licensed under MIT License, see [`LICENSE`](LICENSE).

`FNCS`, `HELICS`, and `Linenoise-ng` have their license and copyright. Please, see each submodule.

`OpenDSS` and `klusolve` have their license and copyright. Please, see each folder after checkout using `svn`.

## Disclaimer

_**THIS REPOSITORY IS NOT RELATED TO EPRI OR OPENDSS**_

_THESE SCRIPTS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE._ 

