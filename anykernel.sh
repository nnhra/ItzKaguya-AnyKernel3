# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# ItzKaguya @ xda-developers

## Kernel setup
# begin properties
# Note : add device.name2 or more if you want add other device codename
# Example : 
# device.name1=a10s
# device.name2=a10sxx
# or more
properties() { '
kernel.string=ItzKaguya Kernel for (idk which device is it)
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
'; } # end properties

# shell variables
block=/dev/block/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
split_boot;

# end ramdisk changes

flash_boot;
## end install

