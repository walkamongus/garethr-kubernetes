
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_pod_security_policy_spec) do
  
  @doc = "Pod Security Policy Spec defines the policy enforced."
  

  ensurable

  
  validate do
    required_properties = [
    
      :se_linux,
    
      :run_as_user,
    
      :supplemental_groups,
    
      :fs_group,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the pod_security_policy_spec.'
  end
  
    
      
      newproperty(:privileged) do
      
        
        desc "privileged determines if a pod can request to be run as privileged."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:default_add_capabilities, :array_matching => :all) do
      
        
        desc "DefaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capabiility in both DefaultAddCapabilities and RequiredDropCapabilities."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:required_drop_capabilities, :array_matching => :all) do
      
        
        desc "RequiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:allowed_capabilities, :array_matching => :all) do
      
        
        desc "AllowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both AllowedCapabilities and RequiredDropCapabilities."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:volumes, :array_matching => :all) do
      
        
        desc "volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may be used."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:host_network) do
      
        
        desc "hostNetwork determines if the policy allows the use of HostNetwork in the pod spec."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:host_ports, :array_matching => :all) do
      
        
        desc "hostPorts determines which host port ranges are allowed to be exposed."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:host_pid) do
      
        
        desc "hostPID determines if the policy allows the use of HostPID in the pod spec."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:host_ipc) do
      
        
        desc "hostIPC determines if the policy allows the use of HostIPC in the pod spec."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:se_linux) do
      
        
        desc "seLinux is the strategy that will dictate the allowable labels that may be set."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:run_as_user) do
      
        
        desc "runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:supplemental_groups) do
      
        
        desc "SupplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:fs_group) do
      
        
        desc "FSGroup is the strategy that will dictate what fs group is used by the SecurityContext."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:read_only_root_filesystem) do
      
        
        desc "ReadOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:default_allow_privilege_escalation) do
      
        
        desc "DefaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:allow_privilege_escalation) do
      
        
        desc "AllowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      
      newproperty(:allowed_host_paths, :array_matching => :all) do
      
        
        desc "is a white list of allowed host paths. Empty indicates that all host paths may be used."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
