KBRANCH ?= "linux-6.6.y"
require recipes-kernel/linux/linux-yocto.inc

SRCREV_meta = "dad768d3d6c23e46e232a5b20a7caad80c3dc0e4"
SRCREV_machine = "58b0425ff5df680d0b67f64ae1f3f1ebdf1c4de9"
INC_PR := "r1"

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git;protocol=https;name=machine;branch=${KBRANCH}; \
	git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-6.6;destsuffix=yocto-kmeta"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

LINUX_VERSION ?= "6.6.43"
KMETA = "kernel-meta"
KCONF_BSP_AUDIT_LEVEL = "1"

PV = "6.6.43"
KERNEL_VERSION_SANITY_SKIP = "1"

PR := "${INC_PR}.0"

KMACHINE = "common-pc-64"
COMPATIBLE_MACHINE = "${MACHINE}"
DISTRO_FEATURES:remove = " usrmerge"


