# Class: pe_license
# ===========================
#
# Full description of class pe_license here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class pe_license(

 )inherits ::pe_license::params {

  # validate parameters here

  class { '::pe_license::install': }
  Class['::pe_license']
}
