#!/usr/bin/env bash

cd $(dirname $BASH_SOURCE)

export TEST_DIR=/tmp/vim-startuptime-benchmark

mkdir -p $TEST_DIR/{autoload,bundle}

if [[ "$1" = 'init' || ! -d "$TEST_DIR" ]]; then
  # Pathogen
  curl -LSso $TEST_DIR/autoload/pathogen.vim https://tpo.pe/pathogen.vim

  # vim-plug
  curl -fLo $TEST_DIR/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim

  # Vundle
  if [ ! -d $TEST_DIR/bundle/Vundle.vim ]; then
    git clone https://github.com/gmarik/Vundle.vim.git $TEST_DIR/Vundle.vim
  else
    (cd $TEST_DIR/Vundle.vim && git pull)
  fi

  # NeoBundle
  if [ ! -d $TEST_DIR/bundle/neobundle.vim ]; then
    git clone https://github.com/Shougo/neobundle.vim $TEST_DIR/neobundle.vim
  else
    (cd $TEST_DIR/neobundle.vim && git pull)
  fi

  # dein.vim
  if [ ! -d $TEST_DIR/dein.vim ]; then
    git clone https://github.com/Shougo/dein.vim.git $TEST_DIR/dein.vim
  else
    (cd $TEST_DIR/dein.vim && git pull)
  fi

  # Install plugins in bundle directory
  vim -Nu src/plug.vim +PlugInstall +qa

  # Dein installs plugins in different directory structure.
  # Manually install plugins with :call dein#install() and quit
  ln -sf src/dein.vim plugins.vim
  vim -Nu vimrc +'echo ":call dein#install()"'

  ln -sf src/dein-all.vim plugins.vim
  vim -Nu vimrc +'echo ":call dein#install()"'

  rm -rf $TEST_DIR/pack/foo
  mkdir -p $TEST_DIR/pack/foo
  ln -sf $TEST_DIR/bundle $TEST_DIR/pack/foo/start
  exit 0
fi

niter=100

rm -f *.log startuptime.report
touch startuptime.report

measure() {
  local vpm=$1
  ln -sf src/$vpm.vim plugins.vim
  for n in $(seq 1 $niter); do
    echo -ne "\r$vpm #$n"
    vim -Nu vimrc --startuptime _.log +q
    tail -1 _.log >> $vpm.log
  done
  echo
  cat $vpm.log | awk '{ sum += $1 } END { printf " %d", sum / NR }' >> "$out"
  vim -Nu vimrc --startuptime startuptime.report +q
}

idx=0
out=result/result.dat
rm "$out"
for vpm in vanilla package pathogen vundle neobundle plug dein; do
  echo -n "\"$vpm\" $idx" >> "$out"
  if [[ $vpm = neobundle ]] || [[ $vpm = plug ]] || [[ $vpm = dein ]]; then
    measure $vpm-all
  fi
  measure $vpm
  echo >> "$out"
  idx=$(( idx + 1 ))
done
rm -f *.log

echo "Creating result/result.svg"
set -eu
cd result
gnuplot result.gnuplot
qlmanage -t -s 1000 -o . result.svg
mv result.svg.png result.png
