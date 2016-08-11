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
inoremap jj <Esc>

nmap <silent> gh :nohlsearch<CR>
nnoremap <F12> :e $HOME/.vimrc<CR>


""" From http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>

" ウインドウ作成
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nmap sf svslgf
" カレントウインドウを切り替え
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w

" カレントウインドウを配置換え
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r

" ウインドウのリサイズ
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap s= <C-w>=
call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" タブ操作:
nnoremap st :<C-u>tabnew<CR>
nnoremap sN gt
nnoremap sP gT

" バッファ切り替え
nnoremap sb :b#<CR>
nnoremap sn :<C-u>bn<CR>
nnoremap sp :<C-u>bp<CR>

" クローズ
nnoremap sq :<C-u>q<CR>
nnoremap sc :<C-u>bd<CR>

nnoremap <silent><C-e> :NERDTreeToggle<CR>
nmap <silent> <C-T> :call BufferList()<CR>
