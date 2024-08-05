" ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
" ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
" ██║   ██║██║██╔████╔██║██████╔╝██║     
" ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"  ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" Verifica o tipo de arquivo
filetype on

" Permite o uso de plugins
filetype plugin on

" Indentação de arquivos
filetype indent on

" Syntax highlight
syntax on

" Número de linhas
set number

" Linhas relativas
set relativenumber

" Quebra de linha
set nowrap

" Número de linhas vistas ao scrollar pelo texto
set scrolloff=10

" Número de colunas que um TAB ocupa
set tabstop=4

" Número de colunas indentadas pelo VIM
set shiftwidth=4

" Número de colunas inseridas com TAB e removidas com BACKSPACE 
set softtabstop=4

" Não guardar arquivos de backup
set nobackup

" Seleciona caractéres que batem com o que está sendo pesquisado
set incsearch

" Ignorar letras maiúsculas em pesquisa
set ignorecase

" Se houver letra maiúscula então busca exatamente como está sendo escrito
set smartcase

" Mostra palavras que batem com a pesquisa
set showmatch

" Habilita o highlight nas pesquisas
set hlsearch

" Permite autocompletar comandos do VIM com TAB
set wildmenu
set wildmode=longest:full,full

" Abre menu para completar palavra já escrita no arquivo atual
set completeopt=menuone,longest

" Não mostra mensagens ao completar código
set shortmess+=c

" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/AutoComplPop'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jesseleite/vim-agriculture'
call plug#end()

" Tema
set termguicolors
set background=dark
let g:material_theme_style = 'ocean'
let g:airline_theme = 'material'
colorscheme material

" Leader
let mapleader = ' '

" Buscar arquivo por nome
nnoremap <C-f> :Files<CR>

" Buscar por conteúdo dentro de arquivo
nmap <Leader>f <Plug>AgRawSearch
nmap <C-h> <Plug>AgRawWordUnderCursor

" Buffer anterior
nnoremap <leader>bb :bp<CR>

" Próximo buffer
nnoremap <leader>bn :bn<CR>

" Árvore de arquivos
nnoremap <leader>e :Ex<CR>

" Desativar highlight de pesquisa
nnoremap <leader>nh :nohl<CR>

" Copiar para clipboard do sistema
xnoremap Y "+y
