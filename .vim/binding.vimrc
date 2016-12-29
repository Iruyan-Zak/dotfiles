let mapleader = "\<Space>"

" 表示行単位で移動
noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

" カーソルキーが効かない時のカバー
inoremap OA <Up>
inoremap OB <Down>
inoremap OC <Right>
inoremap OD <Left>

" OS のクリップボードを使った切り貼り
nmap <leader>y "*y
vmap <leader>y "*y
nmap <leader>d "*d
vmap <leader>d "*d
nmap <leader>p "*p
vmap <leader>p "*p
nmap <leader>P "*P
vmap <leader>P "*P

" カーソル下単語検索
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

vnoremap v $h
inoremap jj <Esc>

nmap <silent> gh :nohlsearch<CR>
nnoremap <C-s> :VimShell<CR>
nnoremap <F12> :e $HOME/.vimrc<CR>

" ファイラ切り替え
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" 爆速カーソル移動
nmap m  <Plug>(easymotion-s2)
nmap g/ <Plug>(easymotion-sn)
xmap g/ <Plug>(easymotion-sn)
omap g/ <Plug>(easymotion-tn)

""" From http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
" ウインドウ・バッファ・タブの処理を "t + <何か>" に当て直しました
nnoremap t <Nop>

" ウインドウ作成
nnoremap tf :rightbelow vs<CR>gf
nnoremap tF :rightbelow sp<CR>gf
nnoremap tb :leftabove  vs<CR>gf
nnoremap tB :leftabove  sp<CR>gf

nnoremap tH :leftabove  vs<CR>
nnoremap tJ :rightbelow sp<CR>
nnoremap tK :leftabove  sp<CR>
nnoremap tL :rightbelow vs<CR>

nnoremap TH :leftabove  vs<CR>
nnoremap TJ :rightbelow sp<CR>
nnoremap TK :leftabove  sp<CR>
nnoremap TL :rightbelow vs<CR>

" カレントウインドウを切り替え
nnoremap tj <C-w>j
nnoremap tk <C-w>k
nnoremap tl <C-w>l
nnoremap th <C-w>h
nnoremap tw <C-w>w

" カレントウインドウを配置換え
nnoremap tJ <C-w>J
nnoremap tK <C-w>K
nnoremap tL <C-w>L
nnoremap tH <C-w>H
nnoremap tr <C-w>r

" ウインドウのリサイズ
nnoremap to <C-w>_<C-w>|
nnoremap tO <C-w>=
nnoremap t= <C-w>=
call submode#enter_with('bufmove', 'n', '', 't>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 't<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 't+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 't-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" タブ操作:
nnoremap tt :<C-u>tabnew<CR>
nnoremap tN gt
nnoremap ty gt
nnoremap tP gT
nnoremap tr gT

" バッファ切り替え
nnoremap tn :<C-u>bn<CR>
nnoremap tp :<C-u>bp<CR>

" クローズ
nnoremap tq :<C-u>bdelete<CR>
nnoremap tc :<C-u>Bdelete<CR>

