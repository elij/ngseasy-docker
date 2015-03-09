FROM compbio/ngseasy-base-gentoo
MAINTAINER NGS Easy

RUN echo "=dev-java/cofoja-1.1_p150 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=dev-java/jcommander-1.32 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=dev-java/commons-jexl-2.1.1 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=dev-java/testng-6.8-r2 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=dev-java/guice-2.0 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=dev-java/snappy-1.0.3_rc3 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=dev-java/asm-5.0.3 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=sci-biology/picard-1.103 ~amd64" >> /etc/portage/package.accept_keywords && \

RUN echo "dev-java/icedtea-bin -X -alsa -cups" >> /etc/portage/package.use/icedtea-bin

RUN MAKEOPTS="-j$(grep processor /proc/cpuinfo | wc -l)" \ 
	emerge \
	=sci-biology/fastqc-bin-0.11.2-r1

# Display some news items
RUN eselect news read new \
	env-update

