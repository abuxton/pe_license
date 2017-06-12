# == Class pe_license::install
#
# This class is called from pe_license for install.
#
class pe_license::install {

  if defined(Class['puppet_enterprise::profile::certificate_authority']){
    file{ '/etc/puppetlabs/license.key' :
      ensure  => 'present',
      source  =>  'puppet:///modules/pe_license/license.key',
    }
  }
  else {
    fail('Only deploy on the Puppet enterprise CA Class['puppet_enterprise::profile::certificate_authority']')
  }
}
