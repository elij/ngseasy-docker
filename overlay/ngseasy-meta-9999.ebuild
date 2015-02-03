EAPI=5

DESCRIPTION="The Default Package (meta package)"
HOMEPAGE="https://github.com/KHP-Informatics/ngseasy"
SRC_URI=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="=dev-libs/protobuf-2.4.1
	sci-biology/bioperl
	virtual/cblas
	sci-biology/goby-cpp
	=sci-biology/gmap-2012.07.20
	=sci-libs/htslib-1.1
	=dev-lang/lua-5.1.5-r3
	=sci-biology/bcftools-1.1
	=sci-biology/samtools-1.1
	=sci-biology/bedtools-2.20.1
	=sci-biology/vcftools-0.1.8
	=sci-biology/vcflib-9999
	=sci-biology/sambamba-bin-0.5.1
	=sci-biology/samblaster-0.1.21
	=sci-biology/libStatGen-1.0.12
	=sci-biology/bamUtil-1.0.12
	sys-process/parallel
	sci-biology/picard
	=sci-biology/fastqc-0.11.2
	sci-biology/trimmomatic
	=sci-biology/bamtools-2.3.0
	sci-biology/freebayes
	sys-fs/udev-init-scripts
	sys-apps/openrc
	sys-process/procps
	=sci-physics/root-5.34.18-r2"

