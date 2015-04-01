#!/bin/bash

mkdir libraries
cd libraries
for lib in SDL SDL_ttf SDL_image
do
  echo "now cloning ${lib}"
  hg clone https://hg.libsdl.org/${lib}
  pwd
  ( cd ${lib} && && find . -type f  |xargs -I,  sed -i 's/automake-1\.13/automake-1.14/g' , && find . -type f  |xargs -I,  sed -i 's/aclocal-1\.13/aclocal-1.14/g' , && ./configure && make && sudo make install )
  pwd
done
