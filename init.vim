"-----------------------------------
"           #== PLUGINS ==#
"-------------------------------------

"# Instale o vim-plug
"# https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'scrooloose/nerdTree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  'NERDTreeToggle' }
Plug 'airblade/vim-gitgutter'
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
Plug 'gabrielelana/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vim-syntastic/syntastic'
call plug#end()

"# Theme
syntax enable
colorscheme gruvbox
"colorscheme dracula
set background=dark

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
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Fechando warnings
nnoremap <S-q> :lclose<CR>

"# Ale
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

"# Coc
let g:coc_global_extensions = [
    \  'coc-snippets',
    \  'coc-emmet',
    \  'coc-html',
    \  'coc-css',
    \  'coc-json', 
    \  'coc-yaml',
    \  'coc-prettier',
    \  'coc-eslint',
    \  'coc-jedi',
    \  'coc-python',
    \   ]

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.

" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

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
"set termguicolors
set t_Co=256
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
set guifont=FiraCode\ Nerd\ Font:h16

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
nnoremap <leader><C-w> :bd<CR>
"# Alternar a posição de uma linha com SHIFT + seta para cima e SHIFT + seta para baixo 
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>

"-------------------------------------
"     #== TERMINAL INTEGRADO ==#
"-------------------------------------
" Mude para o modo normal com o esc
tnoremap <Esc> <C-\><C-t>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  set splitbelow
  split term://zsh
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>
" close terminal
tnoremap <C-t> <C-\><C-n><C-w>q

" use alt+hjkl para mover entre split/vsplit paineis
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
