FROM compbio/ngseasy-base-gentoo
MAINTAINER NGS Easy

RUN echo "=sci-biology/goby-cpp-2.0.1-r1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/gmap-2012.07.20 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/bedtools-2.20.1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/vcftools-0.1.8 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/cofoja-1.1_p150 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/jcommander-1.32 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/commons-jexl-2.1.1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/asm-4.0 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/testng-6.8-r2 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/guice-2.0 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/snappy-1.0.3_rc3 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/picard-1.103 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "sci-biology/fastqc-bin **" >> /etc/portage/package.accept_keywords && \ 
	echo "sci-biology/trimmomatic ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/bamtools-2.3.0 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-physics/root-5.34.26 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/bowtie-2.2.4 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/bioperl-1.6.9 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/bioperl-network-1.6.9 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-perl/File-Sort-1.10.0-r1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/bioperl-run-1.6.9 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/fastx_toolkit-0.0.14 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/libgtextutils-0.6.1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/mrsfast-2.6.0.4 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-biology/mrsfast-ultra-3.3.1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/icedtea-bin-7.2.5.3 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=virtual/jdk-1.7.0 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/BiocGenerics-0.8.0 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/XVector-0.2.0 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/Biostrings-2.30.1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-CRAN/aod-1.3 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/Rsamtools-1.14.3 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/zlibbioc-1.8.0-r1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/IRanges-1.20.7 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-CRAN/bitops-1.0.6-r1 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-BIOC/GenomicRanges-1.14.4 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=sci-CRAN/VGAM-0.9.6 ~amd64" >> /etc/portage/package.accept_keywords && \ 
	echo "=dev-java/jflex-1.4.3-r2 ~amd64" >> /etc/portage/package.accept_keywords

RUN echo "dev-java/icedtea-bin -X -alsa -cups" >> /etc/portage/package.use/icedtea-bin && \ 
	echo "sci-physics/root -X -opengl" >> /etc/portage/package.use/root && \ 
	echo "sci-biology/bioperl -db" >> /etc/portage/package.use/bioperl && \ 
	echo "=media-libs/gd-2.0.35-r4 png" >> /etc/portage/package.use/gd && \ 
	echo ">=sys-libs/zlib-1.2.8-r1 minizip" >> /etc/portage/package.use/zlib


RUN MAKEOPTS="-j$(nproc)" \ 
	emerge \
	=sci-biology/bioperl-1.6.9 \
	=virtual/cblas-1.0 \
	=sci-biology/goby-cpp-2.0.1-r1 \
	=sci-biology/gmap-2012.07.20 \
	=sci-libs/htslib-1.1 \
	=dev-lang/lua-5.1.5-r3 \
	=sci-biology/bcftools-1.1 \
	=sci-biology/samtools-1.1 \
	=sci-biology/bedtools-2.20.1 \
	=sci-biology/vcftools-0.1.8 \
	=sci-biology/vcflib-20141212 \
	=sci-biology/sambamba-bin-0.5.1 \
	=sci-biology/samblaster-0.1.21 \
	=sci-biology/libStatGen-1.0.12 \
	=sci-biology/bamUtil-1.0.12 \
	=sys-process/parallel-20140622 \
	=sci-biology/picard-1.103 \
	=sci-biology/fastqc-bin-0.11.2-r1 \
	=sci-biology/trimmomatic-0.32 \
	=sci-biology/bamtools-2.3.0 \
	=sci-biology/freebayes-9.9.13 \
	=sci-biology/gatk-protected-3.3 \
	sci-physics/root \
	=sci-biology/seqtk-1.0 \
	=sci-biology/stampy-1.0.23 \
	=sci-biology/bwa-0.7.12 \
	=sci-biology/delly-0.6.1 \
	=sci-biology/lumpy-0.2.9 \
	=sci-CRAN/ExomeDepth-1.0.7

# Display some news items
RUN eselect news read new \
	env-update

