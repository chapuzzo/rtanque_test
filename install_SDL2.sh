#!/bin/bash

mkdir libraries
cd libraries

declare -A deps=(\
 [sdl]='https://www.libsdl.org/release/SDL2-2.0.3.tar.gz'\
 [ttf]='https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.12.tar.gz'\
 [image]='https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.0.tar.gz'\
 [mixer]='https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.0.tar.gz'\
)

function a_13(){
  find . -type f  |xargs -I,  sed -i 's/-1\.13//g' ,
}

function next_step(){
  pwd
  echo 'step done, next?'
  read
}

for lib in sdl image ttf mixer
do
  pushd .
  src=${deps[${lib}]}
  echo "now getting ${lib} from ${src}"
  mkdir ${lib}
  wget ${src}
  tar xvfz *${lib}*.tar.gz -C ${lib}
  cd ${lib}/*
  ls -la
  next_step
  ./configure
  next_step
  make
  next_step
  sudo make install
  popd
done
