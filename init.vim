"-----------------------------------
"           #== PLUGINS ==#
"-------------------------------------

"# Instale o vim-plug
"# https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'scrooloose/nerdTree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'sickill/vim-monokai'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

call plug#end()

"# Theme
syntax enable
colorscheme monokai
set background=dark

" Redefine trigger key
let g:user_emmet_leader_key=','

"# Abre/Fecha menu lateral para navegação no diretório atual
nnoremap <C-o> :NERDTreeToggle<cr>
"# Abre lista dos arquivos no diretório atual
nnoremap <C-p> :Files<cr>
"Busca ocorrência nos arquivos
nnoremap <C-f> :Ag<space>

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki

"-------------------------------------
"    #== CONFIGURAÇÕES GERAIS ==#
"-------------------------------------

"# UTF-8
set encoding=utf-8
"# Editar múltiplos arquivos
set hidden
"# Habilitar números nas linhas
set number
"# Habilitar números relativos para saltar entre linhas
set relativenumber
"# Habilitar suporte ao mause
set mouse=a
"# Prevew dos comandos usados anteriormente
set inccommand=split
"# Muda a cor da linha atual
set cursorline
"# TABs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"# Identação Automática
set autoindent
"# Alterando fonte
set guifont=Fira\ Code:h16

"-------------------------------------
"           #== ATALHOS ==#
"-------------------------------------

"# Tecla para chamar os atalhos
let mapleader=","

"# Atalho para o arquivo de configuração do nvim
nnoremap  <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
"# Carrega as alterações do arquivo em tempo de execução
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
