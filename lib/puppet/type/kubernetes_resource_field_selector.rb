
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_resource_field_selector) do
  
  @doc = "ResourceFieldSelector represents container resources (cpu, memory) and their output format"
  

  ensurable

  
  validate do
    required_properties = [
    
      :resource,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the resource_field_selector.'
  end
  
    
      
      newproperty(:container_name) do
      
        
        desc "Container name: required for volumes, optional for env vars"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:resource) do
      
        
        desc "Required: resource to select"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:divisor) do
      
        
        desc "Specifies the output format of the exposed resources, defaults to '1'"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
