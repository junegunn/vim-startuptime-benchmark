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
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'junegunn/vim-github-dashboard'
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
NeoBundle 'junegunn/vader.vim'
NeoBundle 'junegunn/vim-ruby-x'
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
NeoBundle 'tpope/vim-commentary'
NeoBundle 'mbbill/undotree'
NeoBundle 'vim-scripts/ReplaceWithRegister'
NeoBundle 'AndrewRadev/splitjoin.vim'
NeoBundle 'rhysd/vim-grammarous'
NeoBundle 'junegunn/vim-online-thesaurus'

" Tmux
NeoBundle 'tpope/vim-tbone'

" Browsing
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'scrooloose/nerdtree'

NeoBundle 'majutsushi/tagbar'
NeoBundle 'justinmk/vim-gtfo'

" Git
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'mhinz/vim-signify'

" Lang
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'kovisoft/paredit'
NeoBundle 'tpope/vim-fireplace'
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
NeoBundle 'tpope/vim-rails'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'ensime/ensime-vim'
NeoBundle 'honza/dockerfile.vim'
NeoBundle 'solarnz/thrift.vim'
NeoBundle 'dag/vim-fish'
NeoBundle 'chrisbra/unicode.vim'

" Lint
NeoBundle 'scrooloose/syntastic'

call neobundle#end()

" Required:
filetype plugin indent on
syntax enable
