"-----------------------------------
"           #== PLUGINS ==#
"-------------------------------------

"# Instale o vim-plug
"# https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdTree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"# Theme
syntax enable
colorscheme dracula
set background=dark

"# Abre/Fecha menu lateral para navegação no diretório atual
nnoremap <C-o> :NERDTreeToggle<cr>
"# Abre lista dos arquivos no diretório atual
nnoremap <C-p> :Files<cr>
"Busca ocorrência nos arquivos
nnoremap <C-f> :Ag<space>

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
