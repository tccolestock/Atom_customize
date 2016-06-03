# Storage area for Atom Customizations
This repository acts as a simple storage bin for all of my customizations to atom. This will allow (ideally) easy integration amongst different machines creating consistency. Used on a Linux system.

## Linking

A bash script link.sh is provided to automatically create symbolic links for the provided configuration files and syntax theme. This script assumes that the OS is Linux (tested on Ubuntu 14.04) and that the Atom folder is located at ~/.atom/ .

## Linking Config Files

Symbolic links can be used to connect Atom to the configuration files in the local repository.

Currently these files include:
* config.cson
* init.coffee
* keymap.cson
* snippets.cson
* styles.less

```bash
ln -s ~/path/to/local/file.cson ~/.atom/
```
## Linking Syntax Theme Directory

A slightly tweaked syntax theme was created based on the GL-Dark-Syntax theme. It too can be symbolically linked into the Atom package directory like so:

```bash
ln -s ~/syntax/directory/ ~/.atom/packages/
```

## Keymap

To make the keymap: "ctrl-alt-l" work to change pane focus to the right, the native shortcut in Linux must be removed. Do so by:

1. Going into System settings
2. Clicking Keyboard
3. Selecting the Shortcuts tab.
4. Select "System" in the left pane.
5. Select "Lock Screen" in the right pane.
6. Press Backspace to delete shortcut, or reassign to another combination.
