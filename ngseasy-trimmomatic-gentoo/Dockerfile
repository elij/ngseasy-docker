FROM compbio/ngseasy-base-gentoo
MAINTAINER NGS Easy

RUN echo "=sci-biology/trimmomatic-0.32 ~amd64" >> /etc/portage/package.accept_keywords

RUN echo "dev-java/icedtea-bin -X -alsa -cups" >> /etc/portage/package.use/icedtea-bin

RUN MAKEOPTS="-j$(nproc)" \ 
	emerge \
	=sci-biology/trimmomatic-0.32

# Display some news items
RUN eselect news read new \
	env-update

