cmd_/home/ppw/llvm/kernel-measure/proc_measure/modules.order := {   echo /home/ppw/llvm/kernel-measure/proc_measure/proc_measure.ko; :; } | awk '!x[$$0]++' - > /home/ppw/llvm/kernel-measure/proc_measure/modules.order
