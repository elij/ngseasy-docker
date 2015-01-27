FROM scratch

MAINTAINER Gentoo Docker Team

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
RUN mkdir -p /usr/portage/{distfiles,metadata,packages}
RUN chown -R portage:portage /usr/portage
RUN echo "masters = gentoo" > /usr/portage/metadata/layout.conf

# Sync portage
RUN emerge-webrsync -q

# Layman / Custom overlay
RUN emerge layman
RUN echo "source /var/lib/layman/make.conf" >> /etc/portage/make.conf
ADD ngseasy.xml /etc/layman/overlays/
RUN layman -S
RUN layman -a ngseasy

# ngs easy deps
ADD package.accept_keywords /etc/portage/
ADD package.use /etc/portage/
RUN emerge =dev-libs/protobuf-2.4.1
RUN emerge bioperl
RUN emerge cblas
RUN emerge goby-cpp
RUN emerge =sci-biology/gmap-2012.07.20
RUN emerge =sci-libs/htslib-1.1
RUN emerge =dev-lang/lua-5.1.5-r3
RUN emerge =sci-biology/bcftools-1.1
RUN emerge =sci-biology/samtools-1.1
RUN emerge =sci-biology/bedtools-2.20.1
RUN emerge =sci-biology/vcftools-0.1.8
RUN emerge =sci-biology/vcflib-9999
RUN emerge =sci-biology/sambamba-bin-0.5.1
RUN emerge =sci-biology/samblaster-0.1.21
RUN emerge =sci-biology/libStatGen-1.0.12
RUN emerge =sci-biology/bamUtil-1.0.12
RUN emerge sys-process/parallel

RUN layman -a science
RUN emerge sci-biology/picard
RUN emerge =sci-biology/fastqc-0.11.2
#
#
#
#
#

# Display some news items
RUN eselect news read new

# Finalization
RUN env-update
