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

" Arquivos de backup
set nobackup

" Seleciona caractéres que batem com o que está sendo pesquisado
set incsearch

" Ignorar letras maiúsculas em pesquisa
set ignorecase

" Se houver letra maiúscula então busca exatamente o que está escrito
set smartcase

" Mostra palavras que batem com a pesquisa
set showmatch

" Habilita o highlight nas pesquisas
set hlsearch

" Histórico de comandos maior
set history=1000

" Permite autocompletar comandos do VIM com TAB
set wildmenu
set wildmode=longest:full,full

" Abre menu para completar palavra já escrita
set completeopt=menuone,longest

" Não mostra mensagens no menu de completar
set shortmess+=c

" Procura arquivos na pasta atual com find
set path+=**

" Ignora os seguintes arquivos no comando find
set wildignore+=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*/node_modules/*

" Plugins
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/AutoComplPop'
Plug 'ervandew/supertab'
call plug#end()

" SuperTab completa de cima pra baixo
 let g:SuperTabDefaultCompletionType = "<c-n>"

" Tema
set background=dark
colorscheme retrobox

" Leader
let mapleader = " "

" Buscar arquivo
nnoremap <leader>f :find 

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
