# == Class pe_license::params
#
# This class is meant to be called from pe_license.
# It sets variables according to platform.
#
class pe_license::params {
  #retained for future possibility of managing file settings
  if defined(Class['puppet_enterprise::profile::certificate_authority']){

    $pe_license_path  = 'value''/etc/puppet/license.key'

  }
  else {
    fail('Only deploy on the Puppet enterprise CA Class['puppet_enterprise::profile::certificate_authority']')
  }
  }
}
