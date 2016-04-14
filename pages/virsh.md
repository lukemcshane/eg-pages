# Summary

virsh is a program for managing virtual machines which are already set up - *domains*.

# Basics

`virsh`  
starts the virsh shell. In the virsh shell, commands below can be executed without prepending `virsh`  

Commands should often be prepended with `sudo`

`virsh list --all`  
List active and inactive domains. Correspondingly, `virsh list` and `virsh list --inactive`

`virsh start myDomain`  
Start up the guest virtual-machine called *myDomain*  
`virsh shutdown myDomain`  
Shutdown (gracefully) the guest virtual-machine called *myDomain*  
`virsh destroy myDomain`  
(Effectively) pull the power out from guest virtual-machine called *myDomain*  
`virsh undefine myDomain`
Remove myDomain from the list of domains which virsh can see.

`virsh restore myDomain.save`  
Restore the guest virtual-machine called *myDomain.save*  

`virsh suspend myDomain`  
A running domain will no longer be 'scheduled' by the hypervisor.  
It will be kept in memory until the following command is run.  
`virsh resume myDomain`

