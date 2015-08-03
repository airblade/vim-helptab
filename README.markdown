# vim-helptab

Ensure the help docs always open in their own, single tab.

Vim's default behaviour is to open a window and display the help file there, or reuse an existing help window.  However that disrupts your window layout while the help window is open.

This plugin keeps the help window(s) in their own tab, which you can close when you're ready.


## Installation

If you don't have a preferred installation method, I recommend installing [pathogen.vim](https://github.com/tpope/vim-pathogen), and then copy and paste:

```sh
cd ~/.vim/bundle
git clone git://github.com/airblade/vim-helptab.git
```

Or use [voom](https://github.com/airblade/voom) and copy and paste:

```sh
echo 'airblade/vim-helptab' >> ~/.vim/plugins
voom
```


## Usage

Just use `:h` as normal.

```viml
:h <whatever>
```

If you want Vim's default help behaviour, use `:he`, `:hel` or `:help`.


## Licence

Copyright Andrew Stewart.  Released under the MIT licence.
