# dotvim

Personal vim configuration: [vim-plug](https://github.com/junegunn/vim-plug)
plugin manager and plugin list, spell dictionary, and thesaurus.

## What's here

- `autoload/plug.vim` — vim-plug itself (vendored, no separate install step)
- `autoload/pathogen.vim` — unused legacy, kept around from an older setup
- `spell/` — personal spell-check additions (`en.utf-8.add`)
- `thesaurus/mthesaur.txt` — Moby Thesaurus, used via `set thesaurus+=`
- `plugged/` — not tracked; vim-plug installs plugins here (see below)
- `.vimrc` — main config, symlinked to `~/.vimrc`

## Setup on a new machine

1. Clone this repo to `~/.vim`:

   ```sh
   git clone git@github.com:SomeClown/dotvim.git ~/.vim
   ```

2. Symlink `.vimrc` into place:

   ```sh
   ln -s ~/.vim/.vimrc ~/.vimrc
   ```

3. Open vim and install plugins:

   ```
   :PlugInstall
   ```

   Plugins are pulled down from `.vimrc`'s `Plug` list into `~/.vim/plugged/`.

## Plugins

- `vim-colors-solarized`
- `goyo.vim` / `limelight.vim` — distraction-free writing mode
- `vim-pencil` / `vim-lexical` — prose/writing helpers (see `WordProcessorMode` / `:WP` in `.vimrc`)
- `vim-airline` / `vim-airline-themes` — status line
