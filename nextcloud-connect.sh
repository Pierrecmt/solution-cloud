#!/bin/bash
mkdir -p bddsave
mkdir -p bddsave/completes
mkdir -p bddsave/incre

ssh root@192.168.43.208 'bash -s' <  mysqlSaveBdd.sh

