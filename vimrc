" basic .vimrc


set nocompatible 
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set autoindent   
set expandtab
set tabstop=4   "Expands _inserted_ tabs into tabstop columns
set shiftwidth=4
set softtabstop=4
set smarttab
set nowrap
set nohls
syntax enable "turn on syntax highlighting
colorscheme koehler
let perl_fold_blocks = 1
let php_htmlInStrings = 1
highlight Tabs ctermbg=1
match Tabs "\t"
set list
set listchars=tab:>-
set list listchars=tab:>-,trail:$   "Displays whitespace characters.
set encoding=utf-8
nnoremap p  p'[v']=
filetype on
let Tlist_Use_Right_Window=1
let Tlist_Enable_Fold_Column=0
let Tlist_Inc_Winwidth=0
let Tlist_Compact_Format=1
set mouse-=a
au BufReadPost *.t set syntax=perl
set backspace=indent,eol,start    "Make backspaces delete sensibly
set matchpairs+=<:>               "Allow % to bounce between angles too
iab ppsb  #! /usr/local/bin/perl  -w
iab ppbp  use strict;use warnings;use criticism 'brutal'; #uncomment on dev only ; enforces PBP codinguse vars qw{$VERSION};$VERSION = '0.0.1';
iab pudd  use Data::Dumper 'Dumper';warn Dumper [];hi
iab pubm  use Benchmark qw( cmpthese );^Mcmpthese -10, {};^[O
iab pusc  use Smart::Comments;###
iab putm  use Test::More qw( no_plan );
iab papp  :r ~/perl/templates/script_yahoo.pl
iab pmod  :r ~/perl/templates/module_yahoo.pm

"" custom color schemas - in terminal
"" color terminal definitions
set t_Co=280 "enable 280 colors
hi SpecialKey    ctermfg=darkgreen
hi NonText       cterm=bold ctermfg=darkblue
hi Directory     ctermfg=darkcyan
hi ErrorMsg      cterm=bold ctermfg=7 ctermbg=1
hi IncSearch     cterm=NONE ctermfg=yellow ctermbg=green
hi Search        cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg       ctermfg=darkgreen
hi ModeMsg       cterm=NONE ctermfg=brown
hi LineNr        ctermfg=3
hi Question      ctermfg=green
hi StatusLine    cterm=bold,reverse
hi StatusLineNC  cterm=reverse
hi VertSplit     cterm=reverse
hi Title         ctermfg=5
hi Visual        cterm=reverse
hi VisualNOS     cterm=bold,underline
hi WarningMsg    ctermfg=1
hi WildMenu      ctermfg=0 ctermbg=3
hi Folded        ctermfg=darkgrey ctermbg=NONE
hi FoldColumn    ctermfg=darkgrey ctermbg=NONE
hi DiffAdd       ctermbg=4
hi DiffChange    ctermbg=5
hi DiffDelete    cterm=bold ctermfg=4 ctermbg=6
hi DiffText      cterm=bold ctermbg=1
hi Comment       ctermfg=darkcyan
hi Constant      ctermfg=brown
hi Special       ctermfg=5
hi Identifier    ctermfg=7
hi Statement     ctermfg=3
hi PreProc       ctermfg=5
hi Type          ctermfg=2
hi Underlined    cterm=underline ctermfg=5
hi Ignore        ctermfg=darkgrey
hi Error         cterm=bold ctermfg=7 ctermbg=1
