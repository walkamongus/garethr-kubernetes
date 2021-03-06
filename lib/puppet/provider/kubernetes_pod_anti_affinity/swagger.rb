
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_pod_anti_affinity).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        required_during_scheduling_ignored_during_execution: hash_arrays(instance.requiredDuringSchedulingIgnoredDuringExecution),
        
      
    
      
        
        preferred_during_scheduling_ignored_during_execution: hash_arrays(instance.preferredDuringSchedulingIgnoredDuringExecution),
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_pod_anti_affinity #{name}")
    create_instance_of('pod_anti_affinity', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('pod_anti_affinity', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_pod_anti_affinity #{name}")
    destroy_instance_of('pod_anti_affinity', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('pod_anti_affinity')
  end

  def build_params
    params = {
    
      
        requiredDuringSchedulingIgnoredDuringExecution: resource[:required_during_scheduling_ignored_during_execution],
      
    
      
        preferredDuringSchedulingIgnoredDuringExecution: resource[:preferred_during_scheduling_ignored_during_execution],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
