"==============================================
"	Plugin Manage (dein.vim)
"==============================================
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim


"    Plugins
"==============================================
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('tomasr/molokai')
call dein#add('mattn/emmet-vim')
call dein#add('Shougo/unite.vim')
call dein#add('petdance/vim-perl')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})
call dein#add('Shougo/vimfiler')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('vim-scripts/Align')

"call dein#add('vim-airline/vim-airline')
"call dein#add('vim-airline/vim-airline-themes')

call dein#end()

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
"==============================================
"    プラグイン設定
"==============================================
"デフォルトのファイラーをVimfilerに
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0


"Vimairlineの設定
let g:airline#extensions#tabline#enabled = 1
"==============================================
"    設定
"==============================================

filetype plugin indent on

"256色表示
set t_Co=256

"ファイルの内容が変更されたら自動再読込
set autoread

"ターミナル上からの張り付けを許可
set paste

"ルーラー,行番号を表示
set ruler
set number

"ステータスラインを表示
set statusline=2

"カーソルラインを表示する
set cursorline

"カラースキーマ
colorscheme molokai
"シンタックスハイライト
if has("syntax")
    syntax on
endif

"マウス設定
set mouse=a 


" インデント等
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab

"開業時などの自動インデント
set smartindent

"検索関連
set ignorecase
"大文字が含まれる場合は大文字小文字を区別する
set smartcase
"検索結果をハイライト　
set hlsearch

"エンコーディング
set encoding=utf-8
"全角文字対応
set ambiwidth=double

"swapファイルを作らない
set noswapfile
set nobackup

"Use Clipboard
set clipboard+=unnamed,autoselect

"Use backspace as normal keymapping
set backspace=indent,eol,start


"ファイルフォーマット毎の設定
au BufRead,BufNewFile *.scss set filetype=sass

"括弧の対応に移動
source $VIMRUNTIME/macros/matchit.vim

