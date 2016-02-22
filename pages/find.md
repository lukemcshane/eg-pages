# Summary

**find** is used to find files.  
Use the parameters to fill out details of what you want to find.  
It is common to 'pipe' the output to another utility. See Advanced section.  
Find is a complex command. The man page is extensive.

# Basics

`$ find . -name "*.txt"`  
Find any files ending in '.txt' in the current directory  
N.B. This will recurse into sub-directories by default.  

`$ find /etc -type f`  
Find anything of type 'file' in the /etc directory (so: ignore directories inside /etc)  

`$ find /etc -type d`  
Find anything of type 'directory' in the /etc directory (so: ignore files inside /etc)  

# Advanced

`$ find . -name *.txt" | exec -md5sum {} \;`  
Find any files or directories ending in *.txt in the current directory and calculate their md5sum
