
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_role_ref).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        api_group: instance.apiGroup.respond_to?(:to_hash) ? instance.apiGroup.to_hash : instance.apiGroup,
      
    
      
    
      
        name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_role_ref #{name}")
    create_instance_of('role_ref', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('role_ref', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_role_ref #{name}")
    destroy_instance_of('role_ref', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('role_ref')
  end

  def build_params
    params = {
    
      
        apiGroup: resource[:api_group],
      
    
      
    
      
        name: resource[:name],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end