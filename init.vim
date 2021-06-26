"-----------------------------------
"           #== PLUGINS ==#
"-------------------------------------

"# Instale o vim-plug
"# https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdTree'
Plug 'scrooloose/nerdcommenter'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gko/vim-coloresque'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'thaerkh/vim-indentguides'
Plug 'dense-analysis/ale'
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
"Plug 'deoplete-plugins/deoplete-jedi'
Plug 'gabrielelana/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vim-syntastic/syntastic'
Plug 'zxqfl/tabnine-vim'
call plug#end()

"# Theme
syntax enable
colorscheme gruvbox
set background=dark

"# Deoplete
"let g:deoplete#enable_at_startup = 1

" Redefine trigger key emmet
let g:user_emmet_leader_key=','

" Abre/Fecha menu lateral para navegação no diretório atual
nnoremap <C-o> :NERDTreeToggle<cr>
"# Abre lista dos arquivos no diretório atual
nnoremap <C-p> :Files<cr>
" Busca ocorrência nos arquivos
nnoremap <C-f> :Ag<space>

"# Vim Airlines
" Exibe automaticamente todos os buffers quando há apenas uma guia aberta
let g:airline#extensions#tabline#enabled = 1
" Definindo os separadores das guias
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
" Definindo o formatador da guia
let g:airline#extensions#tabline#formatter = 'unique_tail'
" Definindo tema airline
let g:airline_theme='bubblegum'
" Definindo os simbolos da fonte de powerline
let g:airline_powerline_fonts = 1
" Definindo preset tmuxline
let g:tmuxline_preset = 'full'

"# Indent Guides
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

"# Markdown Prevew
nmap <F8> <Plug>MarkdownPreview
nmap <F9> <Plug>MarkdownPreviewStop
nmap <F7> <Plug>MarkdownPreviewToggle

"# Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Fechando warnings
nnoremap <S-q> :lclose<CR>

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
"# Compatibilidade de cores
set termguicolors
"# Menu de comandos
set wildmenu
"# Destacar as buscas
set incsearch
set hlsearch
"# Case insensitive nas buscas
set ignorecase
set smartcase
"# Caixa de diálogo ao sair sem salvar de um arquivo
set confirm

"# Mostrando nome do arquivo no topo do terminal
set title
"# TABs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"# Identação Automática
set autoindent
"# Font
"set guifont=Source\ Code\ Pro\ for\ Powerline:h15:cANSI
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
"# Salvar arquivos com CTRL + S
nnoremap <C-s> :w!<CR>
"# Sair do neovim com CTRL + Q
nnoremap <C-q> :q<CR>
"# Alternar entre abas (buffers) com F1 e F2 
nnoremap <F1> :bprevious<CR>
nnoremap <F2> :bnext<CR>
"# Fechar uma aba (buffer) com CTRL + W
nnoremap <C-w> :bd<CR>
"# Alternar a posição de uma linha com SHIFT + seta para cima e SHIFT + seta para baixo 
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>
