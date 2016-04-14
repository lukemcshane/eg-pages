# Summary

ssh-keygen is used to generate public/private ssh key-pairs.  
It can also check fingerprints and change passwords of existing keys.

# Basics

`ssh-keygen`  
Create a key pair with an interactive dialog.    
If you accept defaults, a 2048 bit RSA key-pair is saved to `~/.ssh`.  
You get *one warning* before an existing pair gets overwritten.  



# Advanced

`ssh-keygen -H ~/.ssh/known_hosts`  
Hash a known_hosts file.  

`ssh-keygen -l -f ~/.ssh/known_hosts`  
If your *known_hosts* file is hashed this shows you the md5 fingerprints  
`ssh-keygen -lv -f ~/.ssh/known_hosts`  
Verbose mode shows the encoded bitmap representations as well.  

`ssh-keygen -l -f /etc/ssh/ssh_host_rsa_key.pub`  
Get the md5 fingerprint of your own computer's default public RSA key.

ssh-keygen is also used to convert keys between different formats.  
ssh-keygen can also be used to sign certificates. See the man page for details.
