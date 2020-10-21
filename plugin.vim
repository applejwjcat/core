let s:dein_data = expand($HOME.'/.cache/dein')

if has('vim_starting')
    " Use dein as a plugin manager
    let g:dein#auto_recache = 1 
    let g:dein#install_max_processes = 12
    let g:dein#enable_notification = 0
    let g:dein#install_log_filename = s:dein_data . '/dein.log'
    let g:dein#install_progress_type = 'echo'
    let g:dein#install_message_type = 'echo'

    " Add the dein installation directory into runtimepath
    set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
endif

if dein#load_state(s:dein_data)
    call dein#begin(s:dein_data)

    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
    call dein#add('neoclide/coc.nvim',{
        \ 'rtv' : 'release',
        \ 'merged':0,
        \ 'hook_add' : 'source $HOME/.config/nvim/modules/coc.vim'
    \})
    call dein#add('ryanoasis/vim-devicons',{
        \ 'on_event' : ['BufNewFile','BufReadPost']
      \ })
    call dein#add('hardcoreplayers/dashboard-nvim',{
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/dashboard.vim'
      \ })
    call dein#add('honza/vim-snippets',{
        \ 'depends': 'coc.nvim',
        \ 'on_event' : 'InsertEnter',
        \ 'if': has('python3'),
        \ 'merged' : 0
      \ })
    call dein#add('iamcco/markdown-preview.nvim',{
        \ 'build' : 'sh -c "cd app && npm install"',
        \ 'on_ft' : 'markdown',
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/markdown-preview.vim'
      \ })
    call dein#add('fatih/vim-go',{
        \ 'on_ft' : 'go',
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/vim-go.vim'
      \ })
    call dein#add('godlygeek/tabular',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'on_cmd': 'Tabularize'
      \ })
    call dein#add('voldikss/vim-floaterm',{
        \ 'on_cmd' : [ "FloatwermNew", "FloatermToggle", "FloatermPrev", "FloatermNext", "FloatermSend" ],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/floaterm.vim'
      \ })
    call dein#add('tpope/vim-fugitive',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('norcalli/nvim-colorizer.lua',{
        \ 'if': 'has("nvim-0.4")',
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'on_ft' : [ "html","css","sass","scss","stylus","vim","javascript","javascriptreact","typescript", "typesctiptreact"],
        \ 'hook_source' : 'luafile $HOME/.config/nvim/lua/plug-colorizer.lua'
      \ })
    call dein#add('liuchengxu/vista.vim',{
        \ 'on_event' : ['BufReadPre'],
        \ 'on_func' : ['vista#RunForNearestMethodOrFunction'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/vista.vim'
      \ })
    call dein#add('luochen1990/rainbow',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'on_ft' : ["html","css","javascript","go","python","c","cpp","lua","vim","shell","json","rust","ruby"],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/rainbow.vim'
      \ })
    call dein#add('junegunn/goyo.vim',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'on_cmd': 'Goyo'
      \ })
    call dein#add('liuchengxu/vim-which-key')
    call dein#add('applejwjcat/undotree',{
        \ 'on_cmd': ['UndotreeFocus','UndotreeHide','UndotreeShow','UndotreeToggle'],
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'hook_source' :'source $HOME/.config/nvim/modules/undotree.vim'
      \ })
    call dein#add('tpope/vim-speeddating',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'on_map': {'n':['<C-a>','<C-x>']}
      \ })
    call dein#add('tpope/vim-eunuch',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('tpope/vim-repeat',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('tpope/vim-commentary',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'hook_source' :'source $HOME/.config/nvim/modules/vim-commentary.vim'
      \ })
    call dein#add('justinmk/vim-sneak',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'hook_source': 'source $HOME/.config/nvim/modules/sneak.vim'
      \ })
    call dein#add('jiangmiao/auto-pairs',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('sheerun/vim-polyglot',{
        \ 'merged' : 0,
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/vim-polyglot.vim'
      \ })
    call dein#add('applejwjcat/onedark.vim')
    call dein#add('mengelbrecht/lightline-bufferline',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'depends' : 'lightline.vim'
      \ })
    call dein#add('itchyny/lightline.vim',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/lightline.vim'
      \ })
    call dein#add('kevinhwang91/rnvimr',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
        \ 'on_cmd' : 'RnvimrToggle',
        \ 'build': 'make sync',
        \ 'hook_source':'source $HOME/.config/nvim/modules/rnvimr.vim'
      \ })
    call dein#add('~/.config/nvim/plugged/fzf',{
        \ 'on_cmd' : ['Files','Colors','Rg','Histoty']
      \ })
    call dein#add('junegunn/fzf.vim',{
        \ 'depends' : 'fzf',
        \ 'hook_source' : "source $HOME/.config/nvim/modules/fzf.vim"
      \ })
    call dein#add('airblade/vim-gitgutter',{
        \ 'on_event': ['BufReadPost','BufNewFile'],
        \ 'hook_source': 'source $HOME/.config/nvim/modules/vim-gitgutter.vim'
      \ })
    call dein#add('tpope/vim-fugitive',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('tpope/vim-rhubarb',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('junegunn/gv.vim',{
        \ 'on_event' : ['BufNewFile','BufReadPost'],
      \ })
    call dein#add('RRethy/vim-illuminate',{
        \ 'on_event': ['BufReadPost','BufNewFile'],
        \ 'hook_source': 'source $HOME/.config/nvim/modules/vim-illuminate.vim'
      \ })
    call dein#add('ChristianChiarulli/far.vim',{
        \ 'on_event': ['BufReadPost','BufNewFile'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/far.vim'
      \ })
    call dein#add('AndrewRadev/tagalong.vim',{
        \ 'on_event': ['BufReadPost','BufNewFile'],
        \ 'on_ft' : ['php', 'html','javascript'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/tagalong.vim'
      \ })
    call dein#add('turbio/bracey.vim',{
        \ 'on_event': ['BufReadPost','BufNewFile'],
        \ 'on_ft' : ['css', 'html','javascript'],
        \ 'hook_source' : 'source $HOME/.config/nvim/modules/bracey.vim'
      \ })
"     call dein#add('lervag/vimtex',{
"         \ 'lazy' : 1
"       \ })
    call dein#add('mattn/vim-gist',{
        \ 'on_event': ['BufReadPost','BufNewFile'],
      \ })
    call dein#end()
    call dein#save_state()

" Update or install plugins if a change detected
    if dein#check_install()
        if ! has('nvim')
            set nomore
        endif
        call dein#install()
    endif
endif

filetype plugin indent on
" Only enable syntax when vim is starting
if has("vim_starting")
    syntax enable
endif

call dein#call_hook('source')
call dein#call_hook('post_source')
