" ESCキーをjjにマッピング
inoremap <silent> jj <ESC>

" <Leader>キーの割当て
let mapleader = " "

" Exモードで，タブ補完メニューを矢印キーで移動できるように
set wildmenu
set wildmode=full

" デフォルトでコマンドライン履歴が20なので，増やす
set history=200

" encoding=utf-8
set number
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4


" マウス操作可能にする
set mouse=a

" クリップボード許可(for vim)
" => http://qiita.com/Kumamon/items/3ca4ab80fc465d8eed7e
" => http://qiita.com/shoma2da/items/92ea8badcd4655b6106c
" set clipboard=unnamed,autoselect

" クリップボード許可(for nvim)
set clipboard=unnamedplus

"let g:clipboard = {
"    \   'name': 'myClipboard',
"    \   'copy': {
"    \      '+': 'win32yank.exe -i',
"    \      '*': 'win32yank.exe -i',
"    \    },
"    \   'paste': {
"    \      '+': 'win32yank.exe -o',
"    \      '*': 'win32yank.exe -o',
"    \   },
"    \   'cache_enabled': 1,
"    \ }


" 常にタブラインを表示
set showtabline=2


"Plugin用設定-----------------------------
" vim-plug

" vscodeとneovimでプラグインを切り分ける
" https://github.com/vscode-neovim/vscode-neovim/issues/415
function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

call plug#begin()
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use VSCode easymotion when in VSCode mode
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })

Plug 'rhysd/clever-f.vim'
Plug 'tpope/vim-surround'
call plug#end()

" easy-motion
" 参考:https://gladevise.com/vim-easymotion-install-settings
" 任意の二文字から始まる文字列の先頭にジャンプ
map <leader>s <Plug>(easymotion-bd-f2)
" 任意の行にジャンプ
map <leader>l <Plug>(easymotion-bd-jk)
