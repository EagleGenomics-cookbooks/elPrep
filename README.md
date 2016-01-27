Description
===========

This Cookbook installs elPrep: a high-performance tool for preparing sequence alignment/map files in sequencing pipelines.

https://github.com/ExaScience/elprep

Requirements
============

## Platform:

* Centos 6.6

Notes
=====

Usage
=====
Simply include the recipe wherever you would like it installed, such as a run list (recipe[elPrep]) or a cookbook (include_recipe 'elPrep')


## Testing
To test the recipe we use chef test kitchen:

kitchen converge default-centos65 

kitchen login default-centos65

kitchen verify default-centos65

kitchen destroy default-centos65

Attributes
==========

See attributes/default.rb for the install flavour:

    default['elPrep']['version'] =  '2.35'
    
    
License and Authors
===================

* Authors:: Bart Ailey (<chef@eaglegenomics.com>)
* Authors:: Dan Barrell (<chef@eaglegenomics.com>)
* Authors:: Nick James (<chef@eaglegenomics.com>)    

Copyright:: 2016, Eagle Genomics Ltd, Apache License, Version 2.0

    
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
    
ToDo
====
 
