# Summary
tar - archiving utility  
It is often useful to pack a group of files/directories into a single file.  
Such a file is known as an *archive* or *tarball*.

# Basics
`tar --create --file new_archive.tar ~/eg/pages`   
Package ~/eg/pages into a tarball called 'new_archive.tar'.    
The original files are untouched by this process.  
`tar --create --file new_archive.tar --directory ~/eg/pages .`  
Change to *~/eg/pages* before creating the archive with its contents (*.*)  
This means the root directory will not be contained in the archive.  

`tar --extract --file new_archive.tar`  
Extract new_archive.tar to the current directory  
`tar --extract --file new_archive.tar --directory output_dir`  
Change to directory called *output_dir* (which must exist) before extracting.  

# Advanced

`tar --create --directory testdir . | gpg --symmetric --armor --output testdir.tar.gpg`  
Archive the directory *testdir* and encrypt with gpg in ascii format.  
You will get a prompt asking for the password.
