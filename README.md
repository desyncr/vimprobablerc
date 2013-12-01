## vimprobablerc
---

My vimprobable configuration and settings. Plus a homepage builder just for amusement.

## Screenshot

![Screenshot](https://github.com/desyncr/vimprobablerc/blob/master/screenshot.png?raw=true)

## Setup

* Install Vimprobable

     git clone git://git.code.sf.net/p/vimprobable/code
     cd code
     make && make install

* (optional) Install tabbed

     git clone http://git.suckless.org/tabbed
     cd tabbed
     make && make install

* Run install.sh

    Generate your vimprobablerc

        cat vimprobablerc.dist | \
            sed "s/\$HOME/\/home\/$USER/g" | \
            sed "s/\$VIMPROBABLE/\/home\/$USER\/.config\/vimprobable/g" \
            > vimprobablerc

    Back up and install the new configs

        [ -e "$HOME/.config/vimprobable" ] && \
            mv "$HOME/.config/vimproable" "$HOME/.config/vimproable.$(date +%d)"

        ln -s $PWD $HOME/.config/vimprobable


    Build your homepage.html

        cd $PWD/home/
        ./home/buildr.rb build > ../homepage.html
        cd -

    Install vimprobable wrapper (tabbed)

        sudo ln -s $PWD/vimprobable /usr/local/bin/

## Feedback

If you'd like to contribute to the project or file a bug or feature request, please visit [the project page][1].

## License

The project is licensed under the [GNU GPL v3][2] ([tldr][3]) license. Which means you're allowed to copy, edit, change, hack, use all or any part of this project *as long* as all of the changes and contributions remains under the same terms and conditions.

  [1]: https://github.com/desyncr/vimprobablerc/
  [2]: http://www.gnu.org/licenses/gpl.html
  [3]: http://www.tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)
