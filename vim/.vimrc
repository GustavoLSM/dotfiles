"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"" Desativar VI
set nocompatible

"" Identificar tipo de arquivo, habilitar plugins, auto indentar, habilitar syntax highlithing e cores mais bonitas
filetype on
filetype plugin on
filetype indent on
syntax on
set termguicolors

"" Número de linhas, linhas relativas, não quebrar linhas e tamanho de linhas vistas no documento
set number
set rnu
set nowrap
set scrolloff=10

"" Tamanho dos TABS
set shiftwidth=4
set tabstop=4
set noexpandtab

"" Não salvar backup
set nobackup

"" Ignorar cases e ter pesquisa mais inteligente
set incsearch
set ignorecase
set showmatch
set hlsearch

"" Histórico de comandos maior e autocompletar de arquivos existentes
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"" Autocompletar código 
set completeopt=menuone,longest
set shortmess+=c

"" Habilitar função de fuzzy finding
set path+=**

"" Configurar o NETRW para melhor busca de arquivos
let g:netrw_banner=0
let g:netrw_altv=0
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"" Plugins
call plug#begin()
Plug 'whatyouhide/vim-gotham'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/AutoComplPop'
call plug#end()

"" Tema
set background=dark
colorscheme gotham
set t_RV=

"" ATALHOS
"" Tecla leader
let mapleader = " "

"" Buscar arquivo
nnoremap <leader>f :find 

"" Buffer anterior
nnoremap <leader>bb :bp<CR>

"" Próximo buffer
nnoremap <leader>bn :bn<CR>

"" Abrir árvore de arquivos
nnoremap <leader>e :Ex<CR>

"" Desativar iluminação em pesquisas
nnoremap <leader>nh :nohl<CR>

"" Copiar texto para área de transferência do sistema operacional
xnoremap Y "+y
