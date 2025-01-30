" NOTE: Must be set *before* ALE is loaded to take effect.
let g:ale_completion_enabled = 1
" Enable showing hover balloons when mousing over a symbol or problem.
let g:ale_set_balloons = 1
" Highlight marks in colors determined by vim-gitgutter
let g:SignatureMarkTextHLDynamic = 1
let g:SignatureMarkerTextHLDynamic = 1

" Make the mundo preview window wider
let g:mundo_preview_bottom=1
execute pathogen#infect()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theming.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

let g:cpp_class_scope_highlight = 1
" let g:cpp_member_variable_highlight = 1
let g:cpp_posix_standard = 1

let g:gruvbox_italic = 1
let g:gruvbox_termcolors=16
let g:gruvbox_improved_warnings=1
let g:gruvbox_contrast_dark="hard"

let g:gruvbox_invert_selection=0
set background=dark

runtime colors/gruvbox.vim

highlight! link cCustomClass    GruvboxPurple
highlight! link cCustomFunc     GruvboxBlue
highlight! link cppSTLfunction  cCustomFunc
highlight! link Type            GruvboxPurple
highlight! link Constant        GruvboxRed
highlight! link Number          GruvboxRed
highlight! link Operator        GruvboxGray
highlight! link Repeat          GruvboxBlueBold
highlight! link Conditional     GruvboxBlueBold
highlight! link Statement       GruvboxAquaBold
highlight! link StorageClass    GruvboxAqua
highlight! link cppCast         GruvboxRed
highlight! link Special         GruvboxPurpleBold
highlight! link pythonBuiltin   GruvboxPurpleBold
highlight! link Search          DiffAdd
highlight! link IncSearch       DiffAdd

highlight String          cterm=italic
highlight cppSTLtype      cterm=italic
highlight cppSTLnamespace cterm=italic


highlight SpellLocal ctermfg=8
highlight MatchParen ctermfg=0      ctermbg=6

highlight SpellBad   ctermfg=0      ctermbg=1
highlight SpellRare  ctermfg=8      ctermbg=3
highlight SpellCap   ctermfg=8      ctermbg=2

" Orange isn't one of the 16 colors, so it doesn't quite work right with Tilix :/
highlight! link GruvboxOrange GruvboxYellowBold

highlight Comment           cterm=italic ctermfg=229 ctermbg=0
highlight CustomDoxyComment cterm=italic ctermfg=0 ctermbg=10

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=232
" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=237

" Default Cursorline Color
highlight CursorLine        ctermbg=237
highlight Visual            ctermbg=55
highlight Normal     ctermfg=NONE   ctermbg=NONE

highlight! link doxygenComment  CustomDoxyComment
highlight! link doxygenBrief    CustomDoxyComment
highlight! link doxygenStartL   GruvboxBg2
highlight! link doxygenCommentL SpecialComment
highlight! link doxygenSpecialTypeOnelineDesc   SpecialComment
highlight! link doxygenSpecialOnelineDesc       CustomDoxyComment
highlight! link doxygenSpecialHeading           SpecialComment

" Make warnings stand out from info messages
" I don't know why this isn't the default.
highlight! link ALEWarning  SpellRare
highlight! link ALEInfo     SpellCap
" gruvbox undoes this, so I'm redoing it
highlight! link ALEError    SpellBad

augroup todoHighlights
    autocmd!
    " TODO: Support highlighting in markdown / plaintext files (no comments)
    " TODO: Support case-insensitivity
    " TODO: Support TODO (name here) style comments with or without trailing colon
    autocmd Syntax * syntax match MyTodo /\v<(FIXME|NOTE|TODO|OPTIMIZE|BUG|XXX|IMPORTANT):/ containedin=.*Comment,vimCommentTitle
augroup END
highlight! link Todo        MyTodo
highlight! link pythonTodo  MyTodo
highlight! link rustTodo    MyTodo
highlight! link vimTodo     MyTodo
highlight! link MyTodo      SpellRare

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline statusline and tablint
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='minimalist'
" Show opened buffers at the top of the screen.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#middle_click_preserves_windows = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols_ascii = 1
let g:airline_symbols.colnr = ' col:'
let g:airline_symbols.linenr = ' ln:'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TODO: Add Python support. Perhaps using https://www.vim.org/scripts/script.php?script_id=386
" or perhaps using https://github.com/andymass/vim-matchup and a ftplugin for
" adding Python b:match_words.
packadd! matchit
packadd! termdebug

let g:localvimrc_ask = 0

" All packadds need to be before the `filetype indent plugin on` in order for
" ftdetect scripts to be loaded.
filetype indent plugin on
set nocompatible
" Set default encoding to UTF-8
set enc=utf-8

" Open man pages with :Man instead of shelling out.
set keywordprg=:Man

" Use ripgrep for :grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" Set autowrite for use with :make
set autowrite
" autoread will check for external file changes when a command is run, which
" is only part of the answer if we want Vim to load external changes.
" So we use https://github.com/djoshea/vim-autoread which checks for changes
" every "updatetime" ms.
set autoread
" Check files and GitGutter hunks for changes every 1000 ms
set updatetime=1000

" Allow switching away from an unsaved buffer without writing it.
" TODO: This is also what's responsible for the buffer tabline not working...
set hidden

" Number of visual spaces per TAB
set tabstop=4
" Number of spaces in tab when editing
set softtabstop=0
" Expand tabs with spaces.
set expandtab
set shiftwidth=4
set shiftround
set smarttab
set smartindent
set autoindent
set backspace=indent,eol,start
set nojoinspaces

"Use terminal title
set title
" Same as title string set by .bashrc, but with the filename and mode too.
set titlestring=%{$USER}@%{hostname()}:\ %F\ %m

" Show line numbers
set number
" Keep the cursor 6 lines from bottom of screen.
set scrolloff=6
set sidescrolloff=6
" Allow the cursor to move off the end of a line.
" set virtualedit=all

" Allow fuzzy menu
set wildmenu
" Redraw screen lazily
set lazyredraw
"Matching brackets highlighted
set showmatch
" Show typed command in statusbar
set showcmd
" Highlight as characters are entered
set incsearch
set ignorecase
" Override ignorecase, unless the query contains a capital letter.
set smartcase
" Must be turned off manually
set hlsearch
" Show number of search results in statusline.
set shortmess-=S
" Use mouse interaction in every mode
set mouse=a

" The path used for gf and friends Set to the default value, but also add
" "**", which searches down from the current directory.
set path& | let &path .= "**"
" Files to ignore while searching
set wildignore+=.git/*,*/node_modules/*,*/target/*,*/build/*,*.class,*.png,*.gif,*.pdf,*.exe,*.o,*.so,*.jar,*.war,*.ear,*.dll,*.swp,*.zip

" enable code folding
set foldenable
set foldlevelstart=15
set foldnestmax=10
" Sure, syntax folding is nice, but it seriously slows down large C++ files
set foldmethod=indent

" Highlight current line
set cursorline
" Highlight current column
"set cursorcolumn
" Comma separated list of columns to highlight
set colorcolumn=100
set textwidth=100
augroup gitCommitLineLength
    autocmd!
    autocmd FileType gitcommit setlocal colorcolumn=72
augroup END
augroup pythonLineLength
    autocmd!
    autocmd FileType python setlocal colorcolumn=150
    autocmd FileType python setlocal textwidth=150
augroup END
set display=truncate

" When creating a new window, make it equal sized to any currently open
" windows. E.g., when using vsplit multiple times.
set equalalways

if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif
"definition
"   gD - go to type definition
"   ]p,[p - next/previous problem
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Override the automatically loaded fixers and linters for certain filetypes.
let g:ale_fixers = {
            \   '*':        ['remove_trailing_lines', 'trim_whitespace'],
            \   'c':        ['clang-format'],
            \   'cmake':    ['cmakeformat'],
            \   'cpp':      ['clangtidy', 'clang-format'],
            \   'css':      ['prettier'],
            \   'diff':     [],
            \   'html':     ['prettier'],
            \   'javascript':['prettier'],
            \   'python':   ['isort', 'black'],
            \   'rust':     ['rustfmt'],
            \   'sh':       ['shfmt'],
            \   'tex':      ['latexindent'],
            \}
let g:ale_linters = {
            \   'cmake':    ['cmake_lint'],
            \   'cpp':      ['clangd'],
            \   'python':   ['pydocstyle', 'pylint', 'pylsp', 'jedils'],
            \   'rust':     ['analyzer'],
            \   'tex':      ['chktex'],
            \}

let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%severity%][%linter%][%code%] %s'

let g:ale_python_black_options = '--line-length=100'
let g:ale_python_pydocstyle_options = '--add-ignore=D100'
" 120 is too much for javascript, but just about right for HTML, which is the
" more common use-case for me.
let g:ale_javascript_prettier_options = '--print-width 120 --prose-wrap always --tab-width 4 --html-whitespace-sensitivity css'
let g:ale_sh_shfmt_options = '--indent 4'
let g:ale_tex_latexindent_options = "--yaml=\"defaultIndent:'    '\""

let g:ale_cpp_clangd_options = '
            \ --background-index
            \ --header-insertion=iwyu
            \ --pch-storage=memory
            \ --completion-style=bundled
            \ --compute-dead
            \ --query-driver="/opt/poky/1.5.1/**/i586-poky-linux-*,/opt/dey/1.6.11/**/arm-dey-linux-gnueabi-*,/usr/bin/em++,/home/nots/src/emsdk/upstream/emscripten/em++"
            \ -j=4
            \ --clang-tidy
            \'

let g:ale_cmake_cmake_lint_options = '--config-files .cmake-format.yaml'


let g:ale_rust_analyzer_config = {
    \ 'cargo': {'loadOutDirsFromCheck': v:true},
    \ 'procMacro': {'enable': v:true},
    \ 'check': {'command': 'clippy'},
    \ 'diagnostics': { 'disabled': ['unresolved-proc-macro'] },
\ }

let g:ale_rust_rustfmt_options = '--config group_imports=StdExternalCrate --config imports_granularity=Module'

let g:ale_dockerfile_hadolint_use_docker = 'yes'

nmap <F1> <Plug>(ale_fix)
imap <F1> <C-\><C-O>:ALEFix<CR>

" gd is normally goto definition of word in current function.
nmap gd <Plug>(ale_go_to_definition)
" gD is normally goto definition in the current file, but rebind to ALEGoToTypeDefinition.
nmap gD <Plug>(ale_go_to_type_definition)
nmap <F2> <Plug>(ale_detail)
imap <F2> <C-\><C-O>:ALEDetail<CR>
" Use a popup, not a new window for the lint details and hover
let g:ale_floating_preview = 1
let g:ale_floating_window_border = []
let g:ale_virtualtext_cursor = 'current'
let g:ale_virtualtext_column = 80
let g:ale_virtualtext_maxcolumn = 120

" Find references to the symbol under the cursor.
" TODO: Use FZF to select and preview (with syntax highlighting!)
" See https://github.com/dense-analysis/ale/issues/2252
" TODO: Use ALERepeatSelection to re-open results (Maybe find a way to keep
" the window open until it's closed manually?)
nnoremap <silent> <Plug>(ale_find_references_quickfix) :ALEFindReferences -quickfix<CR>
nmap <F3> <Plug>(ale_find_references_quickfix)
imap <F3> <C-\><C-O>:ALEFindReferences -quickfix<CR>

" Toggle between header and source. Use a plugin rather than a simple
" s/.cpp/.h/ replacement because you can have .hpp, .HPP, .cxx, and more
nnoremap <F4> :call CurtineIncSw()<CR>
inoremap <F4> <C-\><C-O>:call CurtineIncSw()<CR>

" <F5> toggles paste mode

" Show the syntax groups at the location under the cursor.
map <F6> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" <F7> toggles spell mode
" <F8> toggles undo tree
" Toggle the netrw pane to the side.
noremap <silent> <F9> :call ToggleNetrw()<CR>

" Go to next/previous problems
" Can also open  loclist with :lopen
nmap ]p <Plug>(ale_next_wrap)
nmap [p <Plug>(ale_previous_wrap)

" Got to next/previous item in the quickfix list
nmap ]q :cnext
nmap [q :cprev
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ALE Completion
"
"   <C-n> - In insert mode, triggers omnicompletion. If ALE has automatically
"           triggered the completion popup, <C-n> and <C-p> will navigate the
"           popup.
"   <CR>  - Use <CR> to accept a selected completion.
"
" TODO: Find a way to make ALE include snippets in its completion. Right now,
" you have to remember the name of the snippet, and press <Tab> to expand.
set completeopt=menu,menuone,popup
" If the completion popup is visible, accept the selected completion on <Enter>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use FZF :Files to do file completion in insert mode
imap <c-x><c-f> <plug>(fzf-complete-path)

noremap <silent> <C-F><C-B> :Buffers<CR>
" Consistent with <C-T> readline keybind
noremap <silent> <C-F><C-T> :Files<CR>
noremap <silent> <C-F><C-G> :GFiles<CR>
" Consistent with <C-R> readline keybind
noremap <silent> <C-F><C-R> :History:<CR>
" Mnemonic: find
noremap <silent> <C-F><C-F> :History/<CR>
noremap <silent> <C-F><C-H> :History<CR>
noremap <silent> <C-F><C-J> :Jumps<CR>
noremap <silent> <C-F><C-M> :Marks<CR>
noremap <silent> <C-F><C-S> :Snippets<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"
"   <Tab>   - expand snippet, and navigate forward through tab stops
"   <S-Tab> - navigate backwards through tab stops
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" Use an absolute path for a speedup.
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/snips']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keybinds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off search highlighting with enter
nnoremap <CR> :nohl<CR><CR>

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Use ctrl+[jk] to move lines up and down in normal, insert, and visual mode.
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" These keybinds require a Vim built with the +clipboard feature.
" On Ubuntu, the vim-gtk package provides such a Vim.
inoremap <C-S-p> <ESC>"+Pa
inoremap <C-y> <ESC>"+yy
vnoremap <C-y> "+y
vnoremap <C-S-p> "+P
nnoremap <C-S-p> "+P
nnoremap <C-y> "+yy
set clipboard=unnamedplus

" Visual movement. Act as the arrow keys do when lines wrap.
nnoremap j gj
nnoremap k gk

" Don't bring comments on newlines over to column 0
inoremap # X<BS>#


" Open a new empty buffer. Current buffer must be written.
nmap <C-t> :enew<CR>
" Move to the next buffer.
nmap <C-l> :bnext<CR>
" Move to the previous buffer.
nmap <C-h> :bprevious<CR>
" Make :bd not close any open windows
" https://vim.fandom.com/wiki/Deleting_a_buffer_without_closing_the_window
" https://stackoverflow.com/questions/2605036/how-to-redefine-a-command-in-vim
cnoreabbrev <expr> bd getcmdtype() == ":" && getcmdline() == 'bd' ? 'bprevious\|bdelete #' : 'bdelete'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimwiki settings
" If :help vimwiki doesn't work, run :Helptags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let wiki = {}
let wiki.path = '~/Documents/notes'
let wiki.path_html = '~/Documents/notes/.vimwiki_html'
let wiki.syntax = 'markdown'
let wiki.ext = '.wiki'
let wiki.auto_tags = 1
let wiki.automatic_nested_syntaxes = 1
let wiki.nested_syntaxes = {'bash':'sh', 'shell':'sh', 'terminal':'sh', 'latex': 'tex', 'c++': 'cpp'}
let wiki.auto_toc = 1
let g:vimwiki_list = [wiki]
let g:vimwiki_folding = 'syntax'
let g:vimwiki_table_mappings = 0
let g:vimwiki_key_mappings = { 'table_mappings': 0, }
let g:vimwiki_conceallevel = 0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
" Do not show the default mode indicator, because airline's is better.
set noshowmode


