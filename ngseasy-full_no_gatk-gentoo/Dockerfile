FROM compbio/ngseasy-base-gentoo
MAINTAINER NGS Easy

# Add docker ebuilds
ADD overlay/ngseasy-base/ngseasy-meta/ngseasy-meta-9999.ebuild /usr/local/local-portage/ngseasy-base/ngseasy-meta/
ADD overlay/ngseasy-base/ngseasy-meta/Manifest /usr/local/local-portage/ngseasy-base/ngseasy-meta/

RUN emerge ngseasy-base/ngseasy-meta

# Display some news items
RUN eselect news read new

# Finalization
RUN env-update

# Remove Portage to shrink
RUN find /usr/portage/ -type f -exec rm {} \;
