#!/bin/bash
cd /home/cznkfw/es5/sa8195p-qx-0-1_hlos_dev_qnx/apps/qnx_ap
sleep 2
pwd
source setenv_64.sh --external /home/cznkfw/qnx700_es4/
sleep 5
cd /home/cznkfw/es5/sa8195p-qx-0-1_hlos_dev_qnx/apps/qnx_ap/AMSS/qaic/src/inferno
sleep 2
./clean.sh
make
pwd
