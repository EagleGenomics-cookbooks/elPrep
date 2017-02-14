name 'elPrep'
maintainer 'Eagle Genomics'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache v2.0'
description 'Installs/Configures elPrep'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/EagleGenomics-cookbooks/elPrep'
issues_url 'https://github.com/EagleGenomics-cookbooks/elPrep/issues'
version '1.0.5'

supports 'centos', '= 6.6'

depends 'build-essential'
depends 'git'
depends 'magic_shell'
