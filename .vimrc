call pathogen#infect() 
" set runtimepath+=$HOME/.vim/vim-latex
" set runtimepath+=$HOME/.vim/vim-r-plugin
" set runtimepath+=$HOME/.vim/fugitive

" Backup settings
set backup
set patchmode=.backup 
set backupdir=~/_BACKUP
let savevers_dirs=&backupdir 
" let g:writebackup_DiffVertSplit

" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Why is this not a default
set hidden

" Ask to confirm when closing unsaved stuff etc.
set confirm

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Set gui appearence
set textwidth=80
set columns=80
set lines=44
set guifont =Inconsolata-dz:h13
colorscheme xoria256 " mayansmoke
set mouse=a

" Sets console dialogs instead of popups etc.
set guioptions=acg

" Make command line two lines high
set ch=2

" set visual bell -- I hate that damned beeping
set vb

" Hide the mouse pointer while typing
set mousehide

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" See :help 'cpoptions' for these ones.  'cpoptions' has a huge
" set of possible options
"set cpoptions=

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" tell Vim to always put a status line in, even if there is only one
" window
set laststatus=2

" Sets length of timeout for multikey commands
set timeoutlen=500

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from
" the top and 8 lines from the bottom
set scrolloff=3

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Highlt search match
set hlsearch

" Incrementally match search
set incsearch

" Set tab to 2 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Sets comment symbols
" set comments +=n:*,n:#,n:%,n:"

" Automaticaly reads changed file (good for LaTeX...)
set autoread

" Sets syntax folding
set foldmethod=marker

" Save last view and restore it when Vim starts
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview
                                
" Save stuff automaticaly
set autowriteall

" Remappings:
" ------------------------------------------------------------------------------
" System default for mappings is now the "," character
let mapleader = ","
 
" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<cr>
nmap <silent> ,md :!mkdir -p %:p:h<cr>

" Toggle paste mode
nmap  ,p :set invpaste ":set paste?

" Turn off that stupid highlight search
nmap  ,n :set invhls<cr>

" Set text wrapping toggles
nmap  ,w :set invwrap ":set wrap?

" cd to the directory containing the file in the buffer
nmap  ,cd :lcd %:h

" Set up retabbing on a source file
nmap  ,rr :1,$retab
" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>

" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>

" Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>

" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Close the window below this one
noremap <silent> ,cj :wincmd j<cr>:close<cr>

" Close the window above this one
noremap <silent> ,ck :wincmd k<cr>:close<cr>

" Close the window to the left of this one
noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
noremap <silent> ,cl :wincmd l<cr>:close<cr>

" Close the current window
noremap <silent> ,cc :close<cr>

" Close the current window
noremap <silent> ,bw :bw<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J

" Make the current window the only one
noremap <silent> ,o <C-W>o

" Insert space
nmap <silent> ,<space> i<space><esc>l

" Makes paragraph look nice
nmap <F12> mmvapkJgqap`m

" Remap tab to esc to get from insert to normal mode
imap <tab> <esc> 
vmap <tab> <esc> 

" end(Remappings)
" ------------------------------------------------------------------------------

" For Vim-LaTeX:
" ------------------------------------------------------------------------------

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
" set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
" let g:tex_flavor='latex'

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
" let g:Tex_MultipleCompileFormats='dvi,pdf'
" END(Vim-LaTeX)
" ------------------------------------------------------------------------------

" FOR AutomaticLaTeX plugin:
" ------------------------------------------------------------------------------

" Runs LaTeX 2 times in automatic mode to get refs right:
let b:atp_auruns	= 2

" END(AutomaticLaTeX plugin)
" ------------------------------------------------------------------------------
