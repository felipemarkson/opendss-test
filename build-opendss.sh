libs=$(pwd)/dist/lib
bins=$(pwd)/dist/bin
gcc_libs=$(cc -print-libgcc-file-name | xargs dirname)
export LD_LIBRARY_PATH=$libs

cd OpenDSS/CMD
mkdir -p units
ppcx64 -Fl$gcc_libs -k-L$libs @linuxopts.cfg -FE../../dist/bin -B opendsscmd.lpr && \
cd ../../dist/bin && \
echo "Finished. Showing OpenDSSCMD version..." && \
./opendsscmd --version && \
cd ../../ && \
echo -e "#!/bin/sh\nexport LD_LIBRARY_PATH=$libs\n$bins/opendsscmd \$@" > opendsscmd && \
chmod +x opendsscmd