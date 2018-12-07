call plug#begin('~/.local/share/nvim/plugged')

Plug 'airblade/vim-gitgutter' " Shows a diff in the gutter
Plug 'ap/vim-css-color' " Highlight hex colors
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' } " LSP
Plug 'blueyed/vim-python-pep8-indent', { 'branch': 'searchpair-timeout' }
Plug 'christoomey/vim-tmux-navigator' " Navigate vim and tmux panes the same way
Plug 'dhruvasagar/vim-table-mode' " Easy markdown table editing
Plug 'easymotion/vim-easymotion' " Jump to characters
Plug 'editorconfig/editorconfig-vim' " Shared editor configuration for teams in .editorconfig
Plug 'haya14busa/incsearch.vim' " Improved searching
Plug 'iamcco/markdown-preview.vim' " Markdown preview
Plug 'iamcco/mathjax-support-for-mkdp' " Mathjax markdown
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } " fzf binary
Plug 'junegunn/fzf.vim' " fzf vim plugin
Plug 'mattn/emmet-vim' " emmet HTML editing
Plug 'maxbrunsfeld/vim-yankstack' " Cycle through yanked items
Plug 'mileszs/ack.vim' " Search across files
Plug 'mtth/scratch.vim' " Scratchpad
Plug 'raimondi/delimitmate' " Auto-complete quotes, parens, etc.
Plug 'reasonml-editor/vim-reason-plus' " Reason syntax highlighting
Plug 'scrooloose/nerdcommenter' " Automatically comment lines
Plug 'scrooloose/nerdtree' " NERDTree
Plug 'sheerun/vim-polyglot' " Automatic syntax highlighting
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'commit': '865747efe41ea1d923758617d71e8e5b59da292e' } " Auto-completion
Plug 'sirver/ultisnips' " Snippet engine
Plug 'sjl/gundo.vim' " Visual undo tree
Plug 'terryma/vim-expand-region' " Expand visually selected region
Plug 'tomasr/molokai' " Colorscheme
Plug 'tpope/tpope-vim-abolish' " Abbreviation, Substitution, Coercion
Plug 'tpope/vim-endwise' " Auto-insert do/end
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-obsession' " Save and restore sessions
Plug 'tpope/vim-repeat' " Use . for more complex commands
Plug 'tpope/vim-surround' " Surrounding things in characters
Plug 'tpope/vim-unimpaired' " Simple mappings for transforming text
Plug 'vim-airline/vim-airline' " 'powerline'-like status bar
Plug 'wellle/targets.vim' " More text objects to operate on (edit next parens)

call plug#end()

source $HOME/.config/nvim/native.vimrc
source $HOME/.config/nvim/plugins.vimrc
