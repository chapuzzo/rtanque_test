#!/bin/bash

sudo apt-get install -y freeglut3-dev libpango1.0-dev libgl1-mesa-dev libfreeimage-dev libopenal-dev libsndfile1-dev libfreeimage3 libmpg123-dev libsdl2-dev libsdl2-ttf-dev
# sudo apt-get install -y build-essential libsdl2-dev libsdl2-ttf-dev libpango1.0-dev libgl1-mesa-dev libopenal-dev libsndfile-dev libmpg123-dev
sudo apt-get install -y g++-4.8 #dpkg-dev checkinstall
# export CXX="g++-4.8"

# wget http://archive.ubuntu.com/ubuntu/pool/main/a/automake1.13/automake_1.13.3-1.1ubuntu2_all.deb
# sudo dpkg -i automake_1.13.3-1.1ubuntu2_all.deb


# mkdir libraries
# cd libraries

# declare -A deps=(\
#  [SDL]='https://www.libsdl.org/release/SDL2-2.0.3.tar.gz'\
#  [ttf]='https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.12.tar.gz'\
#  [image]='https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.0.tar.gz'\
#  [mixer]='https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.0.tar.gz'\
# )

# for lib in SDL image ttf mixer
# do
#   pushd .
#   src=${deps[${lib}]}
#   echo "now getting ${lib} from ${src}"
#   mkdir ${lib}
#   wget ${src}
#   tar xvfz *${lib}*.tar.gz -C ${lib}
#   cd ${lib}/*
#   ls -la
#   ./configure
#   make -j
#   sudo checkinstall <<EOF
# n


# EOF
#   cp *.deb ${CIRCLE_ARTIFACTS}
#   popd
# done
