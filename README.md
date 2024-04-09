# eg pages
man pages are great, but sometimes all you need is a quick example - an eg page!

eg pages are designed for those who
  - have just encountered a new command
  - keep forgetting how to use the find command

Just type `eg find` to read the eg page for 'find'.

## Installation:
1.  Clone the project into `~/eg`.
2.  Add the line   
    `source ~/eg/scripts/eg.sh`   
    to `.bash_profile`, `.bashrc`, `.zshrc` or whatever file applies on your system  
    Don't forget to reload the file: 
    `source ~/.bash_profile` 
3. `$ cp --interactive ~/eg/notes ~/.eg`   
    [**optional** - but make sure you don't already have a directory called `~/.eg`]: 
4.  Add colour to man pages https://wiki.archlinux.org/index.php/Man_page#Colored_man_pages   
    [**optional** - this will make it nicer to look at]

## Usage:
`eg find`   
    
**shows a handful of examples of the find command**
  
## Customize:
eg pages are written in very simple markdown
Fill out your `~/.eg` directory with the extra details you really want to remember. 
When you next run `eg find` your most useful examples will be right at the top.

Right now, there are very few eg pages. Please contribute some more!

## How it works:
eg uses pandoc to convert the markdown files to something which can be read with man.
The pandoc conversion is supplemented with a trivial sed command, so that the  
output from your man pager is a bit easier to read.
`~/eg/scripts/eg.sh` is a simple script which does this:  
1. Verify that an eg file (for example `find.md`) exists in `~/eg`  
2. Extract any relevant stuff you added to your `~/.eg directory`  
3. Paste them together  
4. Pipe it through pandoc and man for your enjoyment. That's it.  

## Contribute!
Please help add more eg pages, and improve the few that are there already.  
Imagine you never heard of the command, or you forgot the basic syntax.  
Does your eg page save you turning to a browser?  
Be as concise as possible.  
Use specific flags and files wherever possible (such as `cat ~/eg/brevity.txt`)  
`grep [OPTIONS] PATTERN [FILE...]` style is what man pages are for.

