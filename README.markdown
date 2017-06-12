#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with pe_license](#setup)
    * [What pe_license affects](#what-pe_license-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pe_license](#beginning-with-pe_license)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Simple module to introduce custom fact for PE licensing and to deploy license from file

## Module Description

Overview says it all!

## Setup

### What pe_license affects

* deploys /etc/puppetlabs/license.key

### Setup Requirements **OPTIONAL**

clone the repository to an internal VCS and replace <module>/files/license.key with your license.
will only run on the CA puppet master
### Beginning with pe_license


## Usage

simple run once with
`puppet apply -e include pe_license`

assured
The puppet license is managed by PE so once it's deployed the class is not required.

## Reference

### install

::pe_license::install simply installs the license file

### custom facts

pe_license is a structured fact, see /lib/facter
it exposes the license key data, and also a extra fact of licensed nodes from teh following simple command:
license['licensed_nodes'] = `puppet cert list --all | grep -v internal | wc -l`

## Limitations

PE enterprise

## Development

see CONTRIBUTING.md

## Release Notes/Contributors/Etc **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You may also add any additional sections you feel are necessary or important to include here. Please use the `## ` header.
Initial custom fact taken from https://github.com/fvoges/puppet-pe_license_fact
