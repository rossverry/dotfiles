# dotfiles

Yeah, I joined the club.

These are my dotfiles so I can have my favorite configuration when I move to another environment.

I've pulled a lot from other places and mixed with my own configuration. You're welcome to use any of it.

Places I've pulled from:  

 * [@ryanb](https://github.com/ryanb/dotfiles)
 * [@mathiasbynens](https://github.com/mathiasbynens/dotfiles)
 * [@gf3](https://github.com/gf3/dotfiles)

I think I've got a pretty good setup.  Be sure to check out the three above.

# Installation

Run `bootstrapper.sh` and it will complain about missing dependencies or favorite programs.

The quick `apt-get`:

`sudo apt-get install ruby trash-cli git mercurial vim vim-doc vim-common vim-gui-common tree rake rubygems ruby-bundler`

This will get everything installed and ready for the configuration.

# Bash

    $ tree ~/.bash
    /home/jim/.bash
    ├── aliases
    ├── completions
    ├── completion_scripts
    │   └── git_completion
    ├── config
    ├── functions
    ├── paths
    └── prompt

The above files are loaded by `.bashrc`. The files are pretty self-explanatory, other than `prompt` which colorizes the bash prompt with tweaks for git.

## Cool Aliases

 * cd : pushd
 * bd : popd
 * cd..  | ..   : back one directory
 * cd... | ...  : back two directories
 * ^ up to five directories
 * rm : trash
 * undopush
 * ip
 * GET | HEAD | POST | PUT | DELETE | TRACE | OPTIONS

## Config

 * sets editor to vim
 * sets English/UTF-8
 * sets manpager
 * sets commands to ignore in history
 * sets noclobber (e.g. prevents `cat > IMPORTANT_FILE` mistakes )
 * sets nocaseglob (e.g. `ls ~/.B*` will list contents of `~/.bash`)

## Functions

The two functions, `md` and `c` may not seem like much, but they simplify some commands. For example:
    
    $ md projects; git clone git@github.com:jimschubert/dotfiles.git && cd dotfiles

In the above line, `md` will create the projects directory and `cd` into it.

`c` stands for 'code' and  works like this:

    jim at computer in ~
    $ pwd
    /home/jim
    jim at computer in ~
    $ c dotfiles
    ~/projects/dotfiles ~
    jim at computer in ~/projects/dotfiles on master
    $

You can change it to whatever shortcut and issue `reload`, which is also an alias from this setup.
