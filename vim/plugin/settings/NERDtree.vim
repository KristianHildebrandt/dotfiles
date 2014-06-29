" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 42
let NERDTreeQuitOnOpen = 1

map sn :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map nf :NERDTreeFind<CR>
map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
