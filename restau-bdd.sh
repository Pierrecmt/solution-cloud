#!bin/bash
mkdir -p Restaurebdd/completes
targetPath=Restaurebdd/completes

scp -r -p root@192.168.33.201:./bddsave/completes $targetPath

