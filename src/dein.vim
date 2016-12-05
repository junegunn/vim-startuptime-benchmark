set runtimepath^=$TEST_DIR

set runtimepath+=$TEST_DIR/dein.vim
call dein#begin($TEST_DIR.'/dein')

" My plugins
call dein#add('junegunn/vim-easy-align',       { 'on_map': '<Plug>(EasyAlign)', 'on_cmd': 'EasyAlign' })
call dein#add('junegunn/vim-github-dashboard', { 'on_cmd': ['GHDashboard', 'GHActivity'] })
call dein#add('junegunn/vim-emoji')
call dein#add('junegunn/vim-pseudocl')
call dein#add('junegunn/vim-slash')
call dein#add('junegunn/vim-fnr')
call dein#add('junegunn/vim-peekaboo')
call dein#add('junegunn/vim-journal')
call dein#add('junegunn/seoul256.vim')
call dein#add('junegunn/gv.vim')
call dein#add('junegunn/goyo.vim')
call dein#add('junegunn/limelight.vim')
call dein#add('junegunn/vader.vim',  { 'on_cmd': 'Vader', 'on_ft': 'vader' })
call dein#add('junegunn/vim-ruby-x', { 'on_cmd': 'RubyX' })
call dein#add('junegunn/fzf',     { 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'merged': 0 })
call dein#add('junegunn/rainbow_parentheses.vim')
call dein#add('junegunn/vim-after-object')
call dein#add('junegunn/vim-xmark')

" Colors
call dein#add('tomasr/molokai')
call dein#add('chriskempson/vim-tomorrow-theme')

" Edit
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-commentary',        { 'on_map': '<Plug>Commentary' })
call dein#add('mbbill/undotree',             { 'on_cmd': 'UndotreeToggle'   })
call dein#add('vim-scripts/ReplaceWithRegister')
call dein#add('AndrewRadev/splitjoin.vim')
call dein#add('rhysd/vim-grammarous')
call dein#add('junegunn/vim-online-thesaurus')

" Tmux
call dein#add('tpope/vim-tbone')

" Browsing
call dein#add('Yggdroot/indentLine', { 'on_cmd': 'IndentLinesEnable' })
call dein#add('scrooloose/nerdtree', { 'on_cmd': 'NERDTreeToggle' })

call dein#add('majutsushi/tagbar',   { 'on_cmd': 'TagbarToggle' })
call dein#add('justinmk/vim-gtfo')

" Git
call dein#add('tpope/vim-fugitive')
call dein#add('mhinz/vim-signify')

" Lang
call dein#add('vim-ruby/vim-ruby')
call dein#add('kovisoft/paredit',    { 'on_ft': 'clojure' })
call dein#add('tpope/vim-fireplace', { 'on_ft': 'clojure' })
call dein#add('guns/vim-clojure-static')
call dein#add('guns/vim-clojure-highlight')
call dein#add('guns/vim-slamhound')
call dein#add('fatih/vim-go')
call dein#add('groenewege/vim-less')
call dein#add('pangloss/vim-javascript')
call dein#add('mxw/vim-jsx')
call dein#add('kchmck/vim-coffee-script')
call dein#add('slim-template/vim-slim')
call dein#add('Glench/Vim-Jinja2-Syntax')
call dein#add('rust-lang/rust.vim')
call dein#add('tpope/vim-rails',      { 'on_ft': []      })
call dein#add('derekwyatt/vim-scala')
call dein#add('ensime/ensime-vim',    { 'on_ft': 'scala' })
call dein#add('honza/dockerfile.vim')
call dein#add('solarnz/thrift.vim')
call dein#add('dag/vim-fish')
call dein#add('chrisbra/unicode.vim', { 'on_ft': 'journal' })

" Lint
call dein#add('scrooloose/syntastic', { 'on_cmd': 'SyntasticCheck' })

call dein#end()

filetype plugin indent on
syntax enable
