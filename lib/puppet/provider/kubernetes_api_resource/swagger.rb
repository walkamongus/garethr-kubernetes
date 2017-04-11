
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_api_resource).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      
    
      
        namespaced: instance.namespaced.respond_to?(:to_hash) ? instance.namespaced.to_hash : instance.namespaced,
      
    
      
    
      
        verbs: instance.verbs.respond_to?(:to_hash) ? instance.verbs.to_hash : instance.verbs,
      
    
      
        short_names: instance.shortNames.respond_to?(:to_hash) ? instance.shortNames.to_hash : instance.shortNames,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_api_resource #{name}")
    create_instance_of('api_resource', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('api_resource', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_api_resource #{name}")
    destroy_instance_of('api_resource', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('api_resource')
  end

  def build_params
    params = {
    
      
        name: resource[:name],
      
    
      
        namespaced: resource[:namespaced],
      
    
      
    
      
        verbs: resource[:verbs],
      
    
      
        shortNames: resource[:short_names],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
