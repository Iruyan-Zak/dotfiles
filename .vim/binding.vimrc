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

vnoremap v $h
vnoremap * "zy:let @/ = @z<CR>n
inoremap jj <Esc>

nmap <silent> gh :nohlsearch<CR>
nnoremap <F12> :e $HOME/.vimrc<CR>


""" From http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap t <Nop>

" ウインドウ作成
nnoremap ts :<C-u>sp<CR>
nnoremap tv :<C-u>vs<CR>
nmap tf tvtlgf
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
nnoremap tb :b#<CR>
nnoremap tn :<C-u>bn<CR>
nnoremap tp :<C-u>bp<CR>

" クローズ
nnoremap tq :<C-u>q<CR>
nnoremap tc :<C-u>bd<CR>

nnoremap <silent><C-e> :NERDTreeToggle<CR>
nmap <silent> <C-T> :call BufferList()<CR>

nnoremap TT :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap TT :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap TL :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap TJ :split<CR> :exe("tjump ".expand('<cword>'))<CR>

nnoremap Y "+y
nnoremap YY "+yy
