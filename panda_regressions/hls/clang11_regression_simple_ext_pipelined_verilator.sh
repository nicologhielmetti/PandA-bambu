#!/bin/bash
$(dirname $0)/../../etc/scripts/test_panda.py -lgcc_regression_simple_verilator --tool=bambu -c="--memory-allocation-policy=EXT_PIPELINED_BRAM" -c="--simulator=VERILATOR"\
   --args="--configuration-name=CLANG11_O0 -O0 -lm --simulate --experimental-setup=BAMBU --compiler=I386_CLANG11 --channels-type=MEM_ACC_NN" \
   --args="--configuration-name=CLANG11_O1 -O1 -lm --simulate --experimental-setup=BAMBU --compiler=I386_CLANG11 --channels-type=MEM_ACC_NN" \
   --args="--configuration-name=CLANG11_O2 -O2 -lm --simulate --experimental-setup=BAMBU --compiler=I386_CLANG11 --channels-type=MEM_ACC_NN" \
   --args="--configuration-name=CLANG11_O3 -O3 -lm --simulate --experimental-setup=BAMBU --compiler=I386_CLANG11 --channels-type=MEM_ACC_NN" \
   -o output_clang11_simple_ext_pipelined_verilator -b$(dirname $0) --table=output_clang11_simple_ext_pipelined_verilator.tex --name="Clang11RegressionSimple-ExtPipelined" $@
exit $?