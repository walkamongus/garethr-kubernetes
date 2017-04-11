
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_persistent_volume_claim_status) do
  
  @doc = "PersistentVolumeClaimStatus is the current status of a persistent volume claim."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the persistent_volume_claim_status.'
  end
  
    
      newproperty(:phase) do
        
        desc "Phase represents the current phase of PersistentVolumeClaim."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:access_modes) do
        
        desc "AccessModes contains the actual access modes the volume backing the PVC has. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes-1"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:capacity) do
        
        desc "Represents the actual resources of the underlying volume."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
