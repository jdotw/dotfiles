# jdotw does dotfiles

Your dotfiles are how you personalize your system. These are mine.

I love the new-macOS-smell that comes from a fresh erase-install of the latest os version every now and then, and especially when setting up a new machine. But, I seldom use backup and restore or migration because I want finer control over how the system is being setup. 

When I worked at Apple I had a network share where I had a system_setup.sh script that set all my defaults, installed what I needed, and got me up and running in about 10-15 minutes. This is important when you're regularly re-installing the latest daily build of the OS. 

This dotfiles repo is my attempt to re-create that but in a modern setting, based on the work from holman/dotfiles. 

## Install

Run this to complete the bootstrap, install and setup:

```sh
git clone https://github.com/jdotw/dotfiles.git ~/.dotfiles
~/.dotfiles/bootstrap.sh
```

I structure my system setup into 4 phases with separate scripts: 

1) `./bootstrap.sh`-- One-time install of things I need to kick start the rest of the setup process such as homebrew.
2) `./install.sh` -- One-time, but idempotent, install of software
3) `./setup.sh` -- Idempotent application of the actual dotfiles, preferences, defaults writes, etc
4) `./update.sh` -- On-demand update of homebrew and macOS software updates

Running bootstrap.sh will call install.sh, and install.sh will call setup.sh. This cascade completes your setup from running the bootstrap.sh script alone. 

## Topical

Everything's built around topic areas. If you're adding a new area to your forked dotfiles — say, "Java" — you can simply add a java directory and put files in there. Anything with an extension of .zsh will get automatically included into your shell. Anything with an extension of .symlink will get symlinked without extension into $HOME when you run script/bootstrap.

## Components

There's a few special files in the hierarchy.

- **<topic>/install.sh**: Any file named `install.sh` is executed when you run `~/.dotfiles/install.sh`. 
- **<topic>/setup.sh**: Any file named `setup.sh` is executed when you run `~/.dotfiles/setup.sh`. 
- **<topic>/setup.sh**: Any file named `update.sh` is executed when you run `~/.dotfiles/update.sh`. 
- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **<topic>/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **<topic>/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **<topic>/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **<topic>/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `~/.dotfiles/setup.sh`.

## Bugs

I want this to work for everyone; that means when you clone it down it should
work for you. That said, I do use this as _my_ dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/jdotw/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## Thanks

I forked [@holman's](https://github.com/holman)' excellent
[dotfiles](http://github.com/holman/dotfiles) to bootstrap my efforts with this. Thanks also to [Kelvin](https://github.com/fuzzylim) for making me aware of the dotfiles notion. 
