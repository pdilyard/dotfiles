call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter' " Shows a diff in the gutter
Plug 'christoomey/vim-tmux-navigator' " Navigate vim and tmux panes the same way
Plug 'editorconfig/editorconfig-vim' " Shared editor configuration for teams in .editorconfig
Plug 'elixir-editors/vim-elixir' " Elixir syntax
Plug 'elmcast/elm-vim' " Elm syntax highlighting
Plug 'haya14busa/incsearch.vim' " Improved searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fzf binary
Plug 'junegunn/fzf.vim' " fzf vim plugin
Plug 'justinmk/vim-sneak' " Jump around with s{char}{char}
Plug 'kareeeeem/python-docstring-comments' " Highlight Python docstrings as comments
Plug 'leafgarland/typescript-vim' " Typescript syntax highlighting
Plug 'martinda/jenkinsfile-vim-syntax' " Highlight Jenkinsfile
Plug 'maxbrunsfeld/vim-yankstack' " Cycle through yanked items
Plug 'mileszs/ack.vim' " Search across files
Plug 'peitalin/vim-jsx-typescript' " TSX React typescript files
Plug 'raimondi/delimitmate' " Auto-complete quotes, parens, etc.
Plug 'scrooloose/nerdcommenter' " Automatically comment lines
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocomplete
Plug 'terryma/vim-expand-region' " Expand visually selected region
Plug 'tomasr/molokai' " Colorscheme
Plug 'tpope/tpope-vim-abolish' " Abbreviation, Substitution, Coercion
Plug 'tpope/vim-endwise' " Auto-insert do/end
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-rails' " Ruby on Rails support
Plug 'tpope/vim-rbenv' " rbenv support
Plug 'tpope/vim-repeat' " Use . for more complex commands
Plug 'tpope/vim-surround' " Surrounding things in characters
Plug 'tpope/vim-unimpaired' " Simple mappings for transforming text
Plug 'vim-airline/vim-airline' " 'powerline'-like status bar
Plug 'vim-ruby/vim-ruby' " Ruby lang support
Plug 'wellle/targets.vim' " More text objects to operate on (edit next parens)

call plug#end()

source $HOME/.config/nvim/native.vimrc
source $HOME/.config/nvim/plugins.vimrc
