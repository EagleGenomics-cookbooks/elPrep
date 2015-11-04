name 'elPrep'
maintainer 'Eagle Genomics'
maintainer_email 'chef@eaglegenomics.com'
license 'apache2'
description 'Installs/Configures elPrep'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.2'

supports 'centos', '= 6.6'

depends 'build-essential'
depends 'git'
depends 'magic_shell'
