MODULE_NAME := proc_measure



ifneq ($(KERNELRELEASE),) 	# kernelspace

obj-m := $(MODULE_NAME).o

else						# userspace


LINUX_KERNEL ?= $(shell uname -r)
LINUX_KERNEL_PATH ?= /lib/modules/$(LINUX_KERNEL)/build

CURRENT_PATH ?= $(shell pwd)
CFG_INC = $(CURRENT_PATH)
MODCFLAGS:=-O2 -Wall -DMODULE -D__KERNEL__ -DLINUX -std=c99
EXTRA_CFLAGS  += $(MODULE_FLAGS) -I $(CFG_INC)


modules:
	make -C $(LINUX_KERNEL_PATH) M=$(CURRENT_PATH) modules

modules_install:
	make -C $(LINUX_KERNEL_PATH) M=$(CURRENT_PATH) modules_install

insmod:
	sudo insmod $(MODULE_NAME).ko proc_measure_major=300


rmmod:
	sudo rmmod $(MODULE_NAME)

github:
	cd $(ROOT) && make github

test :
	echo "test device driver proc_measure" > /dev/proc_measure
	cat /dev/proc_measure

clean:
	make -C $(LINUX_KERNEL_PATH) M=$(CURRENT_PATH) clean
	rm -f modules.order Module.symvers Module.markers

.PHNOY:
	modules modules_install clean
	
endif