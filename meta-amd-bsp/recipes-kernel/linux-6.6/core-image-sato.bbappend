IMAGE_FSTYPES += "ext4"

# Define source and destination paths
SRC_FILE = "${WORKDIR}/deploy-core-image-sato-image-complete/core-image-sato-siena.rootfs-*.ext4"
DEST_FILE = "${WORKDIR}/deploy-core-image-sato-image-complete/core-image-sato-siena.ext4"

do_image_wic() {
  # ... other tasks related to image completion (if any) ...

  # Perform the copy operation
  cp -p "${SRC_FILE}" "${DEST_FILE}"  
}

# Perform the copy operation
#do_image_wic() {
#DEPLOY_DIR="${WORKDIR}/deploy-core-image-sato-image-complete"
#SRC_FILE="${DEPLOY_DIR}/core-image-sato-siena-*.rootfs.ext4"
#DEST_FILE="${DEPLOY_DIR}/core-image-sato-siena.ext4"

#    TIMESTAMPED_FILE=$(ls ${DEPLOY_DIR_IMAGE}/core-image-sato-${MACHINE}.rootfs-*.ext4 | head -n 1)
#    ln -sf ${TIMESTAMPED_FILE} ${DEPLOY_DIR_IMAGE}/core-image-sato-${MACHINE}.ext4
#    cp -r ${SRC_FILE} ${DEST_FILE}
#}

#addtask create_symlink after do_image before do_image_wic


#IMAGE_INSTALL += "packagegroup-core-x11-sato"
#IMAGE_FEATURES += "splash"
#IMAGE_FSTYPES += "ext4"

#inherit core-image

#do_create_ext4_image() {
#    echo "Creating ext4 image..."
#    mkdir -p ${DEPLOY_DIR_IMAGE}
#    mkfs.ext4 -d ${IMAGE_ROOTFS} -L ROOTFS ${DEPLOY_DIR_IMAGE}/core-image-sato-siena.ext4
#}
#DEPLOY_DIR="\${WORKDIR}/deploy-core-image-sato-image-complete"
#do_create_symlink() {
#    TIMESTAMPED_FILE=$(ls ${DEPLOY_DIR_IMAGE}/core-image-sato-siena.rootfs-*.ext4 | head -n 1)
#    ln -sf ${TIMESTAMPED_FILE} ${DEPLOY_DIR_IMAGE}/core-image-sato-siena.ext4
#}
#

#addtask create_ext4_image after do_rootfs before do_image
#addtask create_symlink after do_create_ext4_image before do_image_wic
do_image_complete:append() {
#ln -s /media/nvme1/salochan/scrathgap/poky-amd-scarthgap/build-siena-scarthgap/tmp/work/siena-amd-linux/core-image-sato/1.0/deploy-core-image-sato-image-complete/core-image-sato-siena.rootfs-20240527122.ext4 /media/nvme1/salochan/scrathgap/poky-amd-scarthgap/build-siena-scarthgap/tmp/work/siena-amd-linux/core-image-sato/1.0/deploy-core-image-sato-image-complete/core-image-sato-siena.ext4
}

