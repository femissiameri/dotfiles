set nocompatible             					"We want the latest Vim settings/options.

so $HOME/.plugins.vim						"Load plugins from that file.



"--------------Globals--------------"
syntax enable
set backspace=indent,eol,start					"Make backspace behave like every other editor.
let mapleader = ','						"The default leader is '\', but comma is much better.
set number							"Let's activate line numbers.



"--------------Visuals--------------"
colorscheme dusklight
set t_CO=256							"Use 256 colors. This is useful for terminal vim.
set guifont=Victor_Mono:h16
set linespace=15						"Vim GUI specific line height.

"Remove vertical scrollbars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R



"--------------Search--------------"
set hlsearch
set incsearch



"--------------Split Management--------------"
set splitbelow							"Place new splits below.
set splitright							"Place new splits to the right.

nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
nmap <C-K> <C-W><C-K>



"--------------Mappings--------------"
"Make it easy to edit the .vimrc file.
nmap <leader>ev :tabedit $MYVIMRC<cr>
"Add simple search hightlight removal.
nmap <leader><space> :nohlsearch<cr>
"Make NERDTree easer to toggle
nmap <leader><b> :NERDTreeToggle<cr>



"--------------Auto-Commands--------------"
"Automatically source the .vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
	"other autocmd commands
augroup END
