# Git Sketch Plugin

> Caution: this is alpha software and is provided with no warranty of any kind. Use at your own risk. This script was hastily written and is currently just an experiment - it probably only works on macOS. You probably shouldn't use it, but if you do, test it out on copies of your files first. If you lose any work it's on you.

## Install

- `git clone https://github.com/christiannaths/git-sketch && cd git-sketch`
- `make install`

## Use

- `git sketch unpack` – Extracts all .sketch files in current git repo to source folders of the same name
- `git sketch pack` – Converts all .sketch source folders back to .sketch files for use with Sketch

## Uninstall

`make uninstall`

## Why?

Sketch 43 added JSON source files (zipped). This git plugin unpacks & prettifies those files so that they can be added to source control. The idea is that this plugin could be added to git hooks and your sketch sources could be versioned along with your project
