ISO Creation
============

Following the tutorial at https://help.ubuntu.com/community/LiveCDCustomizationFromScratch

Customization
-------------

You may want to change the following variables in the
[configuration.sh](configuration.sh) file:

- `ARCH` is the architecture of the live cd.
  Example: `amd64`. See [here][chroot].
  if you change the architecture, you may also want to change the variable `image_download`.
- `RELEASE` is the release of the live cd.
  If it has the value `xenial`, it uses ubuntu 16.4
  See [here][chroot] for why it is used.
  See [here][ubuntu-releases] for a list of ubuntu releases.
  If you change the release, also change [the sources][h-sources]
- `image_download` is a download link to a zip file which contains the files if the iso image.

Sources
~~~~~~~

The [sources.list](sources.list) file is generated from
[this form][sources-generator].
Please put the output of the website into the following files:

- [sources.list][sources_list] for the **Sources List**.
- [gpg keys][gpg] for the **GPG Keys** section.

ISO

TODO: set link in heading of https://github.com/CodersOS/iso-base





[sources_list]: chroot-update/etc/apt/sources.list
[gpg]: chroot-update/iso-creation/gpg-keys.sh
[sources-generator]: https://repogen.simplylinux.ch/
[chroot]: https://help.ubuntu.com/community/LiveCDCustomizationFromScratch#Make_the_ChRoot_Environment
[ubuntu-releases]: https://wiki.ubuntu.com/Releases
[h-sources]: #sources