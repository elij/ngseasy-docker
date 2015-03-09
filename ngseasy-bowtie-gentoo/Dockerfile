FROM compbio/ngseasy-base-gentoo
MAINTAINER NGS Easy

RUN echo "=sci-biology/bedtools-2.20.1 ~amd64" >> /etc/portage/package.accept_keywords && \
	echo "=sci-biology/bowtie-2.2.4 ~amd64" >> /etc/portage/package.accept_keywords 

RUN MAKEOPTS="-j$(nproc)" \ 
	emerge \
	=sci-biology/bedtools-2.20.1 \
	=sci-biology/sambamba-bin-0.5.1 \
	=sci-biology/samblaster-0.1.21 \
	=sci-biology/bowtie-2.2.4

# Display some news items
RUN eselect news read new \
	env-update

