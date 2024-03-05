CORE_IMAGE_EXTRA_INSTALL += " kernel-modules"
IMAGE_INSTALL:append = " kernel-modules nvme-cli kernel-module-ntb  spitools linux-firmware spidev-test rpm opkg lshw mokutil autoconf stress-ng hwloc tpm-tools ltp numactl packagegroup-core-buildessential"
KERNEL_MODULE_AUTOLOAD += "ntb_netdev"

# Conditionally add packages based on machine type
do_siena[prefunc] = "siena_prefunc"
siena_prefunc() {
 # Only add these packages for the 'siena' machine
    if test "${MACHINE}" = "siena"; then
        IMAGE_INSTALL:append = " lscpuinfo git"
    fi
}


DEPENDS += "lib64-setup"
IMAGE_INSTALL:append = " lib64-setup"

DISTRO_FEATURES:append = " ptest pthread tpm systemd posix-testsuite"
VIRTUAL-RUNTIME_init_manager = "systemd"

