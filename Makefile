ifneq ($(KERNELRELEASE),)
obj-m := hello.o
else
KDIR := /lib/modules/4.16.7/build
all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
