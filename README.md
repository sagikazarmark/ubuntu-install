# Install Ubuntu in 30 minutes

**This is a simple guide for installing ubuntu in 30 minutes (using a predefined environment).**


## Preparations

1. Download this repository and customize the scripts if needed (ppas, debconf seed, packages)
2. Backup your data, home directory, settings, etc (Use a software like unison or backintime for regular backups)


## Installation

1. Install your choice of Ubuntu version (LTS recommended, currently: Trusty Tahr)
2. Restore your home directory backup (Note: if you customized your .bashrc script opening a terminal will likely show some errors (executables not present, etc). For the time being you can just ignore them.)
3. Execute `install.sh`


## Configuration

You need to/can do some further settings to make the system work properly:

- Execute `settings/nemo.sh` to set it as deafult file explorer
- To enable hibernation: execute `settings/hibernation.sh`
- To set firefox minimum tab width: execute `misc/firefox.sh`


## Extras

There are some extra software installers in the `extras/` directory. Make sure to execute `extras/init.sh` before.


## Remove replaced packages

This installer kit provides replacements for some builtin Ubuntu softwares:

- Empathy => Pidgin
- Totem => VLC
- Rhytmbox => Clementine

Thus you can even remove them:

``` bash
$ sudo apt-get purge rhythmbox totem empathy
```

The purpose is to prevent any interactions with these applicationy by accident.
