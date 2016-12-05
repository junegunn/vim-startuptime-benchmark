set runtimepath^=$TEST_DIR

if has('vim_starting')
  " Required:
  set runtimepath+=$TEST_DIR/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('$TEST_DIR/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My plugins
NeoBundleLazy 'junegunn/vim-easy-align',       { 'autoload': { 'commands': 'EasyAlign', 'mappings': '<Plug>(EasyAlign)' } }
NeoBundleLazy 'junegunn/vim-github-dashboard', { 'autoload': { 'commands': ['GHDashboard', 'GHActivity'] } }
NeoBundle 'junegunn/vim-emoji'
NeoBundle 'junegunn/vim-pseudocl'
NeoBundle 'junegunn/vim-slash'
NeoBundle 'junegunn/vim-fnr'
NeoBundle 'junegunn/vim-peekaboo'
NeoBundle 'junegunn/vim-journal'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'junegunn/gv.vim'
NeoBundle 'junegunn/goyo.vim'
NeoBundle 'junegunn/limelight.vim'
NeoBundleLazy 'junegunn/vader.vim',  { 'autoload': { 'commands': 'Vader', 'filetypes': 'vader' } }
NeoBundleLazy 'junegunn/vim-ruby-x', { 'autoload': { 'commands': 'RubyX' } }
NeoBundle 'junegunn/fzf'
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'junegunn/rainbow_parentheses.vim'
NeoBundle 'junegunn/vim-after-object'
NeoBundle 'junegunn/vim-xmark'

" Colors
NeoBundle 'tomasr/molokai'
NeoBundle 'chriskempson/vim-tomorrow-theme'

" Edit
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-endwise'
NeoBundleLazy 'tpope/vim-commentary', { 'autoload': { 'mappings': '<Plug>Commentary' } }
NeoBundleLazy 'mbbill/undotree',      { 'autoload': { 'commands': 'UndotreeToggle'   } }
NeoBundle 'vim-scripts/ReplaceWithRegister'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'rhysd/vim-grammarous'
NeoBundle 'junegunn/vim-online-thesaurus'

" Tmux
NeoBundle 'tpope/vim-tbone'

" Browsing
NeoBundleLazy 'Yggdroot/indentLine', { 'autoload': { 'commands': 'IndentLinesToggle' } }
NeoBundleLazy 'scrooloose/nerdtree', { 'autoload': { 'commands': 'NERDTreeToggle'    } }

NeoBundleLazy 'majutsushi/tagbar',   { 'autoload': { 'commands': 'TagbarToggle'      } }
NeoBundle 'justinmk/vim-gtfo'

" Git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mhinz/vim-signify'

" Lang
NeoBundle 'vim-ruby/vim-ruby'
NeoBundleLazy 'kovisoft/paredit',    { 'autoload': { 'filetypes': 'clojure' } }
NeoBundleLazy 'tpope/vim-fireplace', { 'autoload': { 'filetypes': 'clojure' } }
NeoBundle 'guns/vim-clojure-static'
NeoBundle 'guns/vim-clojure-highlight'
NeoBundle 'guns/vim-slamhound'
NeoBundle 'fatih/vim-go'
NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'Glench/Vim-Jinja2-Syntax'
NeoBundle 'rust-lang/rust.vim'
NeoBundleLazy 'tpope/vim-rails',      { 'autoload': { 'filetypes': [] } }
NeoBundle 'derekwyatt/vim-scala'
NeoBundleLazy 'ensime/ensime-vim',    { 'autoload': { 'filetypes': 'scala' } }
NeoBundle 'honza/dockerfile.vim'
NeoBundle 'solarnz/thrift.vim'
NeoBundle 'dag/vim-fish'
NeoBundleLazy 'chrisbra/unicode.vim', { 'autoload': { 'filetypes': 'journal' } }

" Lint
NeoBundleLazy 'scrooloose/syntastic', { 'autoload': { 'commands': 'SyntasticCheck' } }

call neobundle#end()

" Required:
filetype plugin indent on
syntax enable
