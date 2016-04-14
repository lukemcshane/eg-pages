# Summary

gpg is an encryption program.
It can be used to symmetric or asymmetric encryption

# Basics

`gpg --symmetric ~/eg/samples/brevity.txt`  
This will prompt for a password (and repeat). It will output a file called  
`brevity.txt.gpg.tar` in the ~/eg/samples directory

`gpg --output filename.gpg --symmetric ~/eg/samples/brevity.txt`  
This time, filename.gpg is treated as a relative path.  
So it is output to the current directory.

`gpg --armor --output filename.gpg --symmetric ~/eg/samples/brevity.txt`  
Use the *armor* flag when you want ascii output (say to paste into an email).

`gpg --decrypt filename.gpg`  
This will show you the encryption algorithm and prompt for a passphrase.  
If you enter the correct password, the file will be decrypted to STDOUT.  
`gpg --decrypt filename.gpg > output.txt`  
This redirects output to a file.  
