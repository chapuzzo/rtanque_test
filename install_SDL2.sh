#!/bin/bash

mkdir libraries
cd libraries
for lib in SDL SDL_ttf SDL_image
do
  echo "now cloning ${lib}"
  hg clone https://hg.libsdl.org/${lib}
  pwd
  ( cd ${lib} && find . -type f  |xargs -I,  sed -i 's/-1\.13//g' , && ./configure && make && sudo make install )
  pwd
done
