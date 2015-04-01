#!/bin/bash

mkdir libraries
cd libraries
for lib in SDL SDL_ttf SDL_image
do
  hg clone https://hg.libsdl.org/${lib}
  cd ${lib} && ./configure && make && sudo make install
done
