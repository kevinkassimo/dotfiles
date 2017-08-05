# dotfiles of Kevin Qian

## Why
I started to manage and host my dotfiles inspired by some of my friend (special thanks to Colin). Also there are some good suggestions in http://dotfiles.github.io  

I was foolish enough not to use soft links to keep my dotfiles from some folder maybe named `~/dotfiles`, and instead directly placed `.git` at my `~` directory... This resulted in my writing of `dot.sh` in my `.dot` directory, along with records saved in `.dotrc` and `.dotbase`  

Anyways, I may just further exploit my `.dot/dot.sh`...  

I have just started to care about these dotfiles, so the configurations are mostly lacking.  

## Included files
All tracked files are specified in `.dotrc`, which is added with `dot -s [filenames]`. A copy is mentioned here:  
```
.bash_profile # I am not using .bashrc
.emacs.d # emacs config
.vim # vim plugins and custom source scripts
.vimrc # vim config
.dot # where dot script is saved
.dotrc # dot tracked file config
.dotbase # base path of dot tracking, here is just my HOME directory
```
