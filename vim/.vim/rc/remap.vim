" Do not show stupid q: window
map q: :q

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" BÉPO
" ------------------------------
" {W} -> [É]
noremap é w
noremap É W
" Corollaire: on remplace les text objects aw, aW, iw et iW
" pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap aé aw
onoremap aÉ aW
onoremap ié iw
onoremap iÉ iW
" Pour faciliter les manipulations de fenêtres, {W} -> ctrl + w :
noremap w <C-w>
noremap W <C-w><C-w>

" [HJKL] -> {CTSR}
noremap c h
noremap r l
noremap t j
noremap s k
noremap C H
noremap R L
noremap T J
noremap S K

" {HJKL} <- [CTSR]
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" onglet précédant / suivant
noremap gb gT
noremap gé gt
" optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap gB :exe "silent! tabfirst"<cr>
noremap gÉ :exe "silent! tablast"<cr>
" optionnel : {g"} pour aller au début de la ligne écran
noremap g" g0

" <> en direct
noremap « <
noremap » >
inoremap « <
inoremap » >

" gestion des fenêtres
noremap wt <C-w>j
noremap ws <C-w>k
noremap wc <C-w>h
noremap wr <C-w>l
noremap wd <C-w>c
noremap wo <C-w>s
noremap wp <C-w>o
noremap w<SPACE> :split<cr>
noremap w<cr> :vsplit<cr>

" -------------------------

" others
nnoremap <Enter> o<esc>
nnoremap <S-Enter> O<esc>
nnoremap ê <esc>:w<cr>
nnoremap Ê <esc>:wa<cr>
nnoremap <TAB> :bn<cr>
nnoremap <S-TAB> :bp<cr>

" invert search repeating
nnoremap ; ,
nnoremap , ;

inoremap qq <esc>

" quickfix shortcuts
nnoremap <leader>t :cn<esc>
nnoremap <leader>s :cp<esc>

" nohighlight
nnoremap <leader>n :noh<esc>

" save session
nnoremap <leader>m :mksession<esc>

" fzf shortcuts
nmap <C-p> :Files<cr>
nmap <C-b> :Buffers<cr>
nmap <leader>j :Tags<cr>
