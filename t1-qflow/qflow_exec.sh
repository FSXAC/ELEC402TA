#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/ELEC402TA/t1-qflow
#-------------------------------------------

/usr/local/share/qflow/scripts/yosys.sh ~/ELEC402TA/t1-qflow up_counter ~/ELEC402TA/t1-qflow/source/up_counter.sv || exit 1
/usr/local/share/qflow/scripts/graywolf.sh -d ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/ELEC402TA/t1-qflow up_counter || exit 1
/usr/local/share/qflow/scripts/qrouter.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/netgen_lvs.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/ELEC402TA/t1-qflow up_counter || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/ELEC402TA/t1-qflow up_counter || exit 1
