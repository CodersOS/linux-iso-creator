#
# User defined Variables
# ======================
#
# See https://help.ubuntu.com/community/LiveCDCustomizationFromScratch#Make_the_ChRoot_Environment
# This is the architecture we prepare the image for.
ARCH=amd64

# the download location of the iso files
image_download="https://github.com/CodersOS/iso-base/archive/master.zip"

# See https://help.ubuntu.com/community/LiveCDCustomizationFromScratch#Make_the_ChRoot_Environment
# The release of the live cd.
RELEASE=xenial

# the name of the image
IMAGE_NAME="CodersOS"

#
# Build Variables
# ===============
#
#
# the location of the iso and the file system of the iso
work="~/work"

# the location of the chroot environment
chroot="$work/chroot"

# the location of the iso-creation folder
iso_creation="~/iso-creation"

# the location of the sources.list file
sources_list="$iso_creation/sources.list"
# the location of the gpg keys for the sources.list file
sources_list_gpg_keys="$iso_creation/gpg-keys.sh"

# the location of the first chroot command
chroot_update="$iso_creation/chroot-update"

# the iso location
image="$work/image"

# packages to remove for the filesystem.manifest-desktop files:
REMOVE='ubiquity ubiquity-frontend-gtk ubiquity-frontend-kde casper lupin-casper live-initramfs user-setup discover1 xresprobe os-prober libdebian-installer4'

# the location of the iso image
iso_image="$work/$IMAGE_NAME.iso"