# These facter facts return the value of the number of licensed nodes and the used nodes.
#The intent is to enable Puppet Query Language to be used to report the licensed nodes
#
# The values should be directly usable for monitoring and logging also
#

require 'facter'
require 'yaml'

Facter.add(:pe_license) do
  setcode do
    if File.exist?('/etc/puppetlabs/license.key')
      license = YAML.load_file('/etc/puppetlabs/license.key')
      license['start'] = license['start'].to_s
      license['end'] = license['end'].to_s
      #license['licensed_nodes'] = `puppet cert list --all | grep -v internal | wc -l`
      license
    end
  end
end
