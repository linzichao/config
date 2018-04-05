set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" indentLine
" let g:indentLine_enabled = 1
" let g:indentLine_char = '┆'


filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

call plug#begin('~/.vim/plugged')
Plug 'nightsense/simplifysimplify'
call plug#end()

colorscheme simplifysimplify-light

let g:simplifysimplify_dark_LineNr = 'off'
let g:simplifysimplify_light_LineNr = 'off'

set autoindent
syntax on
set ru
set backspace=2
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
hi Comment ctermfg=Green

"" ctags & cscope setting 
set tags=./tags,./TAGS,tags;~.TAGS;~

if has("cscope")

    set cscopetag
    set csto=0

    if filereadable("cscope.out")
        cs add cscope.out  
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    set cscopeverbose  


    nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>    
    nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>    
    nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>    
    nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>    
    nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>    
    nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>    
    nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>    

endif

"" taglist setting
nmap <F8> :TlistToggle<CR><CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
set ut=100

"" NERDTree
nmap <F9> :NERDTreeToggle<CR>
let NERDTreeWinPos = "left"

"" SrcExpl
nmap <F10> :SrcExplToggle<CR>
let g:SrcExpl_pluginList = [
            \"__Tag_List__",
            \"NERD_tree_1"
            \]

"" TrinityToggleAll
nmap <F7> :TrinityToggleAll<CR>
