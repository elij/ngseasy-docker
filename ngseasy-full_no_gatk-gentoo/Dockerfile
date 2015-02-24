FROM ngseasy-base
MAINTAINER NGS Easy

# Add docker ebuilds
ADD overlay/ngseasy-base/ngseasy-meta/ngseasy-meta-9999.ebuild /usr/local/local-portage/ngseasy-base/ngseasy-meta/
ADD overlay/ngseasy-base/ngseasy-meta/Manifest /usr/local/local-portage/ngseasy-base/ngseasy-meta/

# fix to allow qbox to build
RUN emerge =dev-java/jflex-1.4.3 && ln -s /usr/bin/jflex-1.4.3 /usr/bin/jflex
RUN emerge ngseasy-base/ngseasy-meta
RUN emerge =sci-biology/gatk-protected-3.3

# Display some news items
RUN eselect news read new

# Finalization
RUN env-update

# Remove Portage to shrink
RUN find /usr/portage/ -type f -exec rm {} \;
