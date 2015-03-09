FROM compbio/ngseasy-base-gentoo
MAINTAINER NGS Easy

RUN echo "=sci-biology/bedtools-2.20.1 ~amd64" >> /etc/portage/package.accept_keywords 

RUN MAKEOPTS="-j$(grep processor /proc/cpuinfo | wc -l)" \ 
	emerge \
	=sci-biology/bedtools-2.20.1 \
	=sci-biology/sambamba-bin-0.5.1 \
	=sci-biology/samblaster-0.1.21 \
	=sci-biology/bwa-0.7.12

# Display some news items
RUN eselect news read new \
	env-update

