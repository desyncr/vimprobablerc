#!/bin/bash

# Expand configuration vars
cat vimprobablerc.dist | \
    sed "s/\$HOME/\/home\/$USER/g" | \
    sed "s/\$VIMPROBABLE/\/home\/$USER\/.config\/vimprobable/g" \
    > vimprobablerc

# Backup configs
[ -e "$HOME/.config/vimprobable" ] && \
    mv "$HOME/.config/vimproable" "$HOME/.config/vimproable.$(date +%d)"

ln -s $PWD $HOME/.config/vimprobable

# Build default home page
cd $PWD/home/
./home/buildr.rb build > ../homepage.html
cd -

# Install vimprobable wrapper (tabbed)
sudo ln -s $PWD/vimprobable /usr/local/bin/
