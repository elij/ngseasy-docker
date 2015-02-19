FROM scratch
MAINTAINER ngseasy

# This one should be present by running the build.sh script
ADD stage3-amd64.tar.xz /

# Setup the (virtually) current runlevel
RUN echo "default" > /run/openrc/softlevel

# Setup the rc_sys
RUN sed -e 's/#rc_sys=""/rc_sys="lxc"/g' -i /etc/rc.conf

# Setup the net.lo runlevel
RUN ln -s /etc/init.d/net.lo /run/openrc/started/net.lo

# Setup the net.eth0 runlevel
RUN ln -s /etc/init.d/net.lo /etc/init.d/net.eth0
RUN ln -s /etc/init.d/net.eth0 /run/openrc/started/net.eth0

# By default, UTC system
RUN echo 'UTC' > /etc/timezone

# Used when this image is the base of another
#
# Setup the portage directory and permissions
ONBUILD RUN mkdir -p /usr/portage/{distfiles,metadata,packages}
ONBUILD RUN chown -R portage:portage /usr/portage
ONBUILD RUN echo "masters = gentoo" > /usr/portage/metadata/layout.conf

# Sync portage
ONBUILD RUN emerge-webrsync -q
ONBUILD RUN emerge --sync

# Update portage
ONBUILD RUN emerge --oneshot portage

# Fixes for stage3 (December 2014) and portage mismatch
ONBUILD RUN emerge sys-fs/udev-init-scripts sys-apps/openrc sys-process/procps virtual/perl-Module-Build

# Layman / Custom overlay
ONBUILD RUN emerge layman
ONBUILD RUN echo "source /var/lib/layman/make.conf" >> /etc/portage/make.conf
ONBUILD RUN layman -S
ONBUILD RUN layman -a ngseasy
ONBUILD RUN layman -a science

# Setup local overlay area
ONBUILD RUN mkdir -p /usr/local/local-portage/ngseasy-base/ngseasy-meta/
ONBUILD RUN mkdir -p /usr/local/local-portage/{profiles,metadata}
ONBUILD RUN echo 'PORTDIR_OVERLAY="/usr/local/local-portage/ ${PORTDIR_OVERLAY}"' >> /etc/portage/make.conf
ONBUILD RUN echo "masters = gentoo" > /usr/local/local-portage/metadata/layout.conf
ONBUILD RUN echo "ngseasy-base" >> /etc/portage/categories
ONBUILD RUN echo "ngseasy overlay" >> /usr/local/local-portage/profiles/repo_name

RUN mkdir -p /etc/layman/overlays/
ADD ngseasy.xml /etc/layman/overlays/

# ngs easy deps
ADD package.accept_keywords /etc/portage/
ADD package.use /etc/portage/

