FROM scratch
MAINTAINER ngseasy

# This one should be present by running the build.sh script
ADD stage3-amd64.tar.xz /

# Setup the (virtually) current runlevel
# Setup the rc_sys
# Setup the net.lo runlevel
# Setup the net.eth0 runlevel
# By default, UTC system
RUN echo "default" > /run/openrc/softlevel && \
	sed -e 's/#rc_sys=""/rc_sys="lxc"/g' -i /etc/rc.conf && \
	ln -s /etc/init.d/net.lo /run/openrc/started/net.lo && \
	ln -s /etc/init.d/net.lo /etc/init.d/net.eth0 && \
	ln -s /etc/init.d/net.eth0 /run/openrc/started/net.eth0 && \
	echo 'UTC' > /etc/timezone && \
	mkdir -p /etc/layman/overlays/

# ngs easy deps
COPY ngseasy.xml /etc/layman/overlays/

# Used when this image is the base of another
#
# Setup the portage directory and permissions
# Sync portage
# Update portage
# Fixes for stage3 (December 2014) and portage mismatch
# Layman / Custom overlays
ONBUILD RUN mkdir -p /usr/portage/{distfiles,metadata,packages} && \
	chown -R portage:portage /usr/portage && \
	echo "masters = gentoo" > /usr/portage/metadata/layout.conf && \
	emerge-webrsync -q && \
	emerge --sync && \
	emerge --oneshot portage && \
	touch /etc/portage/package.use && \
	touch /etc/portage/package.accept_keywords && \
	MAKEOPTS="-j$(nproc)" emerge sys-fs/udev-init-scripts sys-apps/openrc sys-process/procps virtual/perl-Module-Build layman && \
	echo "source /var/lib/layman/make.conf" >> /etc/portage/make.conf && \
	layman -S && \
	layman -a ngseasy && \
	layman -a science && \
	layman -a R_Overlay 

