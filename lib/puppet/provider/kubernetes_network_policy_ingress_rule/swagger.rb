
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_network_policy_ingress_rule).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        ports: instance.ports.respond_to?(:to_hash) ? instance.ports.to_hash : instance.ports,
      
    
      
        from: instance.from.respond_to?(:to_hash) ? instance.from.to_hash : instance.from,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_network_policy_ingress_rule #{name}")
    create_instance_of('network_policy_ingress_rule', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('network_policy_ingress_rule', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_network_policy_ingress_rule #{name}")
    destroy_instance_of('network_policy_ingress_rule', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('network_policy_ingress_rule')
  end

  def build_params
    params = {
    
      
        ports: resource[:ports],
      
    
      
        from: resource[:from],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
