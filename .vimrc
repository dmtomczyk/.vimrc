set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=C:/Users/Daymian/Vim/vimfiles/bundle/Vundle.vim/
call vundle#begin('C:/Users/Daymian/Vim/vimfiles/bundle/')
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'preservim/nerdtree'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'OmniSharp/omnisharp-vim'
    Plugin 'prabirshrestha/asyncomplete.vim'
    Plugin 'prabirshrestha/async.vim'
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
    Plugin 'dense-analysis/ale'
    Plugin 'mg979/vim-visual-multi', {'branch': 'master'}
	Plugin 'bignimbus/you-are-here.vim'
call vundle#end()            " required

" Syntax, et al
filetype plugin indent on
syntax on

autocmd vimenter * NERDTree

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

set encoding=UTF-8

" NERDTREE SETTINGS
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 40

" You-are-here.vim map
nnoremap <silent> <leader>here :call you_are_here#Toggle()<CR>



" ALIAS / REMAPPING
let mapleader = ","
nmap <leader>f :NERDTreeToggle<cr> " type ,f to toggle tree

" OMNISHARP AUTOCOMPLETION SETTINGS
set completeopt=menuone,noinsert,noselect,preview
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
let g:asyncomplete_force_refresh_on_context_changed = 1
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_highlight_types = 2

" if using ultisnips, set g:OmniSharp_want_snippet to 1
" let g:OmniSharp_want_snippet = 1

" Automatically start vim in fullscreen mode
autocmd GUIEnter * simalt ~x

" Automatically indent new lines
set autoindent

" Spaces for tab setting
set tabstop=4
set shiftwidth=4

" Show line numbers
set number

" Match open / close braces
set showmatch

" highlight matching items in /search
set hlsearch

" Cursor position
set scrolloff=5

" Permanent status bar
set laststatus=2

" Enable mouse scrolling
set mouse=a

" FOLDING XML
augroup XML
    autocmd!
    autocmd FileType xml let g:xml_syntax_folding=1
    autocmd FileType xml setlocal foldmethod=syntax
    autocmd FileType xml :syntax on
    autocmd FileType xml :%foldopen!
augroup END

"           Scroll Wheel = Up/Down 4 lines
"           Shift + Scroll Wheel = Up/Down 1 page
"           Control + Scroll Wheel = Up/Down 1/2 page
"           Meta + Scroll Wheel = Up/Down 1 line

noremap <ScrollWheelUp>     4<C-Y>
noremap <ScrollWheelDown>   4<C-E>
noremap <S-ScrollWheelUp>   <C-B>
noremap <S-ScrollWheelDown> <C-F>
noremap <C-ScrollWheelUp>   <C-U>
noremap <C-ScrollWheelDown> <C-D>
noremap <M-ScrollWheelUp>   <C-Y>
noremap <M-ScrollWheelDown> <C-E>
inoremap <ScrollWheelUp>     <C-O>4<C-Y>
inoremap <ScrollWheelDown>   <C-O>4<C-E>
inoremap <S-ScrollWheelUp>   <C-O><C-B>
inoremap <S-ScrollWheelDown> <C-O><C-F>
inoremap <C-ScrollWheelUp>   <C-O><C-U>
inoremap <C-ScrollWheelDown> <C-O><C-D>
inoremap <M-ScrollWheelUp>   <C-O><C-Y>
inoremap <M-ScrollWheelDown> <C-O><C-E>
