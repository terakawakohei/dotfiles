" ESCキーをjjにマッピング
inoremap <silent> jj <ESC>

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
