" .vimrc by gunther.weissenbaeck@stadtwerke-jena.de

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" autowrite
set autowrite


" .............................................................................
" Vundle
" .............................................................................
" install vundle
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'


" .............................................................................
" General Vim Plugins
" .............................................................................
" Plugin 'preservim/nerdcommenter'
Plugin 'Asheq/close-buffers.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-startify'
Plugin 'pearofducks/ansible-vim'
Plugin 'preservim/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/delimitMate.vim'

" .............................................................................
" Markdown
" .............................................................................
" Plugin 'gabrielelana/vim-markdown'
" Plugin 'suan/vim-instant-markdown'


" .............................................................................
" Python
" .............................................................................
" Plugin 'python-mode/python-mode'
" Plugin 'davidhalter/jedi-vim'


" .............................................................................
" Vimwiki
" .............................................................................
Plugin 'vimwiki/vimwiki'


" .............................................................................
" Vundle End
" .............................................................................
call vundle#end()


" .............................................................................
" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
" .............................................................................
set pastetoggle=<F2>
set clipboard=unnamed


" .............................................................................
" Mouse and backspace
" .............................................................................
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again


" .............................................................................
" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
" .............................................................................
let mapleader = " "


" .............................................................................
" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-x>`` stands for ``CTRL+x``
" .............................................................................
noremap <C-x> :nohl<CR>
vnoremap <C-x> :nohl<CR>
inoremap <C-x> :nohl<CR>


" .............................................................................
" Bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
" .............................................................................
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" .............................................................................
" Quicksave command
" .............................................................................
noremap <C-z> :update<CR>
vnoremap <C-z> <C-C>:update<CR>
inoremap <C-z> <C-O>:update<CR>


" .............................................................................
" Quick quit command
" .............................................................................
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows
noremap <Leader>q <esc><c-w>j<esc>:q<CR>



" .............................................................................
" Easier moving between tabs
" .............................................................................
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
map <Leader>N <esc>:tabnew<CR>


" .............................................................................
" Easier moving between buffers
" .............................................................................
map <Leader>j <esc>:bp<CR>
map <Leader>k <esc>:bn<CR>


" .............................................................................
" Resizing
" .............................................................................
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" .............................................................................
" Map sort function to a key
" .............................................................................
vnoremap <Leader>s :sort<CR>


" .............................................................................
" Easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
" .............................................................................
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" .............................................................................
" Show whitespace
" MUST be inserted BEFORE the colorscheme command
" .............................................................................
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/


" .............................................................................
" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim
" http://www.vim.org/scripts/download_script.php?src_id=13400
" .............................................................................
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
color predawn


" .............................................................................
" Enable syntax highlighting
" You need to reload this file for the change to apply
" .............................................................................
filetype off
filetype plugin indent on
syntax on


" .............................................................................
" Folding
" .............................................................................
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
set foldmethod=indent
set nofoldenable


" .............................................................................
" Showing line numbers and length
" .............................................................................
set number  " show line numbers
set relativenumber " show relative numbers in present line
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set fo+=t   " automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" .............................................................................
" Transparent background
" .............................................................................
" hi NonText ctermbg=none 
" hi Normal guibg=NONE ctermbg=NONE


" .............................................................................
" Easier formatting of paragraphs
" .............................................................................
vmap Q gq
nmap Q gqap


" .............................................................................
" Useful settings
" .............................................................................
set history=700
set undolevels=700


" .............................................................................
" Real programmers don't use TABs but spaces
" .............................................................................
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" .............................................................................
" Make search case insensitive
" .............................................................................
set hlsearch
set incsearch
set ignorecase
set smartcase


" .............................................................................
" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
" .............................................................................
set nobackup
set nowritebackup
set noswapfile


" .............................................................................
" Remember last position in file
" .............................................................................
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal! g'\"" | endif
endif



" .............................................................................
" Erweiterter Modus der Kommandozeilen-Vervollständigung mit Tab, in dem 
" alle Treffer in einem Menü angezeigt werden
" .............................................................................
set wmnu


" .............................................................................
" Toggle spellchecking
" .............................................................................
function! ToggleSpellCheck()
    set spell!
    if &spell
        echo "Spellcheck ON"
    else
        echo "Spellcheck OFF"
    endif
endfunction

nnoremap <Leader>S :call ToggleSpellCheck()<CR>

" .............................................................................
" Switch Languages for Spellchecking
" .............................................................................
nnoremap <Leader>D :set spelllang=de<CR>
nnoremap <Leader>E :set spelllang=en_gb<CR>


" .............................................................................
" You can add some shortcuts to make it easier to jump between 
" errors in quickfix list:
" .............................................................................
" map <C-1> :cnext<CR>
" map <C-2> :cprevious<CR>
" nnoremap <leader>q :cclose<CR>


" .............................................................................
" Running a macro
" .............................................................................
nnoremap <Space> @q


" .............................................................................
" Help text window on the right pane
" .............................................................................
autocmd FileType help wincmd L


" .............................................................................
" Vsplit to the right panel | Split below
" .............................................................................
:set splitright
:set splitbelow


" .............................................................................
" Mouse and backspace
" .............................................................................
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again


" .............................................................................
" Wildmenu
" .............................................................................
set wildoptions=pum


" .............................................................................
" NERDTree
" .............................................................................
let g:NERDTreeDirArrowCollapsible="~"
let g:NERDTreeDirArrowExpandable="+"
map <C-t> :NERDTreeToggle<CR>


" .............................................................................
" NERDCOMMENTER
" add space after comment
" .............................................................................
let g:NERDSpaceDelims = 2


" .............................................................................
" Close-Buffers Shortcut to delete hidden buffers
" .............................................................................
map <Leader>bh <esc>:Bdelete hidden<CR>


" .............................................................................
" Vim airline themes
" .............................................................................
" let g:airline_theme='atomic'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'


" .............................................................................
" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
" .............................................................................
let g:ctrlp_max_height = 30
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_show_hidden=1
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*.venv/*
set wildignore+=*/coverage/*


" .............................................................................
" Vimwiki settings
" .............................................................................
let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.mkd': 'markdown', '.wiki': 'media'}


" .............................................................................
" Instant markdown settings
" .............................................................................
" let g:instant_markdown_autostart = 0
" map <leader>md :InstantMarkdownPreview<CR>


" ============================================================================
" Python IDE Setup
" ============================================================================

" .............................................................................
" Python-mode-settings
" .............................................................................
" let g:pymode_options = 1
" let g:pymode_syntax = 1
" let g:pymode_options_colorcolumn = 1
" let g:pymode_quickfix_minheight = 3
" let g:pymode_quickfix_maxheight = 6
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_builtin_funcs = 0

" .............................................................................
" Pymode-mappings
" .............................................................................
" map <Leader>p <esc>:PymodeRun<CR>
" map <Leader>l <esc>:PymodeLintAuto<CR>
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
" map <Leader>g :call RopeGotoDefinition()<CR>

" .............................................................................
" Python-mode Rope settings
" .............................................................................
" let g:pymode_rope = 1
" let g:pymode_rope_goto_def_newwin = "vnew"
" let g:pymode_rope_autoimport = 1
" let g:pymode_rope_ropefolder='.rope'
" let ropevim_enable_shortcuts = 1


" .............................................................................
" Ansible and YAML
" .............................................................................
" autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    " \ autoindent

au BufRead,BufNewFile */playbooks/*.yaml set filetype=yaml.ansible

let g:ansible_attribute_highlight = "ob"
let g:ansible_extra_keywords_highlight_group = 'Statement'
let g:ansible_normal_keywords_highlight = 'Constant'
let g:ansible_unindent_after_newline = 1
let g:ansible_yamlKeyName = 'yamlKey'


" .............................................................................
" Undotree
" .............................................................................
nnoremap <F5> :UndotreeToggle<CR>
" let g:undotree_SplitWidth = 40
" Show it on the right side
let g:undotree_WindowLayout = 3

" .............................................................................
" Copilot
" .............................................................................
" A shortcut to accept the first suggestion of copilot. I should
" be CTRL-J. I will use the following command to do so:

nnoremap <C-j> :call copilot#accept(1)<CR>
