FROM ngseasy-base
MAINTAINER NGS Easy

# Add docker ebuilds
ADD overlay/ngseasy-base/ngseasy-meta/* /usr/local/local-portage/ngseasy-base/ngseasy-meta/

# RUN emerge ngseasy-base/ngseasy-meta

# Display some news items
RUN eselect news read new

# Finalization
RUN env-update
