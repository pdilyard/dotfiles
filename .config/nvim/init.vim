call plug#begin('~/.local/share/nvim/plugged')

Plug 'Raimondi/delimitMate' " Auto-complete quotes, parens, etc.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Auto-completion
Plug 'airblade/vim-gitgutter' " Shows a diff in the gutter
Plug 'ap/vim-css-color' " Highlight hex colors
Plug 'christoomey/vim-tmux-navigator' " Navigate vim and tmux panes the same way
Plug 'easymotion/vim-easymotion' " Jump to characters
Plug 'haya14busa/incsearch.vim' " Improved searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fzf binary
Plug 'junegunn/fzf.vim' " fzf vim plugin
Plug 'mattn/emmet-vim' " emmet HTML editing
Plug 'maxbrunsfeld/vim-yankstack' " Cycle through yanked items
Plug 'mileszs/ack.vim' " Search across files
Plug 'scrooloose/nerdcommenter' " Automatically comment lines
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'sheerun/vim-polyglot' " Automatic syntax highlighting
Plug 'sjl/gundo.vim' " Visual undo tree
Plug 'slashmili/alchemist.vim' " Elixir support
Plug 'styled-components/vim-styled-components' " Styled-components highlighting
Plug 'terryma/vim-expand-region' " Expand visually selected region
Plug 'tomasr/molokai' " Colorscheme
Plug 'tpope/tpope-vim-abolish' " Abbreviation, Substitution, Coercion
Plug 'tpope/vim-endwise' " Auto-insert do/end
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-repeat' " Use . for more complex commands
Plug 'tpope/vim-surround' " Surrounding things in characters
Plug 'tpope/vim-unimpaired' " Simple mappings for transforming text
Plug 'vim-airline/vim-airline' " 'powerline'-like status bar
Plug 'wellle/targets.vim' " More text objects to operate on (edit next parens)

call plug#end()

source $HOME/.config/nvim/plugins.vimrc
source $HOME/.config/nvim/native.vimrc
