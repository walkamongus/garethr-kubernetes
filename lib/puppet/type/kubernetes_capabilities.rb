
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_capabilities) do
  
  @doc = "Adds and removes POSIX capabilities from running containers."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the capabilities.'
  end
  
    
      
      newproperty(:add, :array_matching => :all) do
      
        
        desc "Added capabilities"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:drop, :array_matching => :all) do
      
        
        desc "Removed capabilities"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
