cd ../../
ls
for dir in `ls`; do git remote -v; done
for dir in `ls`; do git remotes -v; done
for dir in `ls`; do git remote -v; done
ls
for dir in `ls`; do cd $dir; git remote -v; cd ..; done
for dir in `ls`; do cd $dir; echo $dir; git remote -v; cd ..; done
for dir in `ls`; do cd $dir; echo $dir; git remote -v | grep fetch | sed -e `s/origin\s*//' ; cd ..; done
for dir in `ls`; do cd $dir; echo $dir; git remote -v | grep fetch | sed -e 's/origin\s*//' ; cd ..; done
for dir in `ls`; do cd $dir; echo $dir; git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s*.*//' ; cd ..; done
for dir in `ls`; do cd $dir; echo $dir; git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//' ; cd ..; done
for dir in `ls`; do cd $dir; echo $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n $url ] ;then echo $dir $urs ; fi; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n $url ] ;then echo $dir $urs ; fi; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n $url ] ;then echo $dir $url ; fi; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n $url ] ;then echo $dir $url ; fi; url="" ; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n $url ] ;then echo $dir $url ; fi; unset url ; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n "$url" ] ;then echo $dir $url ; fi; unset url ; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n "$url" ] ;then echo $url $dir ; fi; unset url ; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n "$url" ] ;then echo git submodule add $url $dir ; fi; unset url ; done
for dir in `ls`; do cd $dir; url=`git remote -v | grep fetch | sed -e 's/origin\s*//' -e 's/\s\+.*//'` ; cd .. ; if [ -n "$url" ] ;then git submodule add $url $dir ; fi; unset url ; done
git status .
cd syntastic/
ls
git status .
git duff syntax_checkers/erlang/erlang_check_file.erl
git diff syntax_checkers/erlang/erlang_check_file.erl
git diff syntax_checkers/python/compile.py
cd ../vim-easytags/
git status .
git diff misc/easytags/normalize-tags.py
git diff misc/easytags/why-so-slow.py
cd ../
ls
cd taglist/
git remote -v
ls
cd ../
ls
git status .
git rm --cached syntastic vim-easytags vim-fugitive vim-misc xterm-color-table.vim
git submodule deinit syntastic
git rm -rf syntastic/
git rm -rf syntastic
rm -rf *
ls
git status .
git rm --cached syntastic
git rm --cached vim-easytags vim-fugitive vim-misc xterm-color-table.vim
git status .
cp -r ~/.vim/bundle/* .
ls
cd 
cd /media/jeremyro/Lexar/
ls
mv dotfiles/ dotfiles_old/
ls
cd dotfiles
ls
git status .
git add .
cd ../../
cd Lexar/dotfiles
ls
cd vim/
ls
cd swapfiles/
ls
rm *
ls
cd ../
ls
rm ack.tar.gz 
ls
rm dw_colors.zip 
ls
cd ../
ls
git status .
git add .
git status .
cd vim/bundle/syntastic/
ls
git status .
git diff syntax_checkers/erlang/erlang_check_file.erl
ls
git diff syntax_checkers/python/compile.py
cd ../../
cd bundle/xterm-color-table.vim/
ls
git status .
git diff doc/tags
cd ../../
ls
cd ../
git status .
cd ../
rm -rf dotfiles/
mkdir dotfiles
cd dotfiles
ls
git init
ls
ls -la
cp -r ~/.vim* ~/.bash* .
ls
ls -la
mv .bash_aliases bash_aliases
ls -a
ls -af
ls -ad
man ls
ls -A
for file in `ls -A`; do if [ $file != bash_aliases -a $file != ".git" ]; then echo mv $file `echo $file | sed -e 's/^\.//'`; done
for file in `ls -A`; do if [ $file != bash_aliases -a $file != ".git" ]; then echo mv $file `echo $file | sed -e 's/^\.//'`; fi ; done
for file in `ls -A`; do if [ $file != bash_aliases -a $file != ".git" ]; then mv $file `echo $file | sed -e 's/^\.//'`; fi ; done
ls
ls -la
cp ~/.ackrc ackrc
mkdir ssh
mkdir config
mkdir config/vim-review/
mkdir config/git-review/
rm config/vim-review/
rm -rf config/vim-review/
cd ssh/
cp ~/.ssh/config .
cd ../config/git-review/
cp ~/.config/git-review/git-review.conf .
cd ../../
ls
ls -la
rm bash_history 
ls -la
cp ~/.cvsrc cvsrc
cp ~/.diffexcludes .
mv .diffexcludes diffexcludes 
ls -la
cp ~/.git* .
ls -la
mv .gitconfig gitconfig 
mv .gitignore_global gitignore_global 
rm -rf .gitk
mv .gitmessage gitmessage 
cp ~/.screenrc screenrc
cp ~/.signature* .
ls -la
mv .signature signature
mv .signature.html signature.html
ls -la
rm viminfo vimtags 
ls -la
cd vim/
ls
cd swapfiles/
ls
rm -rf *
ls
cd ../
ls
rm -rf swapfiles/
ls
cd plugin/
ls
cd ../
ls
rm ack.tar.gz 
cd plugin/
ls
rm ack.vim 
ls
cd ../
ls
vim dw_colors.zip 
rm dw_colors.zip 
ls
cd backups/
ls
cd ..
rm -rf backups/
ls
cd autoload/
ls
cd ../
ls
cd bundle/
ls
mv tabline.vim/ ../../../
ls ../../../
ls
rm vim-latex-1.8.23-20120125.768-git8b62284.tar.gz 
ls
cd ../../
ls
cd ../
cd dotfiles
ls
ls -la
git status .
cd vim/
ls
cd doc/
ls
cat tags 
rm tags 
ls
cd ../
ls
cd plugin/
ls
cd ../doc/
ls
rm ack.txt 
ls
cd ../
ls
cd spell/
ls
cd ../
ls
cd ..
ls
git add ackrc bash* config/git-review/git-review.conf cvsrc diffexcludes gitconfig gitignore_global gitmessage screenrc signature signature.html ssh/config vim/autoload/pathogen.vim vimrc 
git status
cd vim/
ls
cat .netrwhist 
rm .netrwhist 
ls
cd colors/
ls
git add *
cd ..
ls
cd autoload/
ls
git status pathogen.vim
cd ../
ls
cd bundle/
ls
cd ../
ls
cd colors/
cd ../doc/
ls
cd spell
ls
cd ../spell/
ls
git add *
cd ../../
git status .
cd vim/plugin/
ls
git add cscope_maps.vim DoxygenToolkit.vim 
cd ../../
git status .
git commit
cd vim/bundle/
ls
cd ./
cd /media/jeremyro/Lexar/
ls
cd dotfiles
ls
cd vim/
ls
cd bundle/
ls
cd ../../
ls
cd VCOMMON/
ls
cd ../
ls
mkdir local_vim_plugins
cd local_vim_plugins/
ls
cd tabline.vim/
git lg
cd ../../
ls
cd .vim/
ls
cd ../
nvim .vimrc
cd local_vim_plugins/
ls
cd tabline.vim/
git remote -v
nvim 
cd .vim/bundle/
ls
cd LaTeX-Suite-aka-Vim-LaTeX/
ls
cd ../
ls
rm -rf LaTeX-Suite-aka-Vim-LaTeX/ vundle/
ls
cd DoxygenToolkit.vim/
ls
cd plugin/
ls
diff DoxygenToolkit.vim ../../../plugin/DoxygenToolkit.vim 
:q
cd ../../
cd ../plugin/
ls
rm DoxygenToolkit.vim 
ls
cd ../
cd plugin/
ls
cat cscope_maps.vim 
nvim cscope_maps.vim 
rm cscope_maps.vim 
ls
cd ../
ls
cd doc/
ls
rm tags 
ls
cd ../
ls
cd ../../local_vim_plugins/
ls
cd taglist/
ls
rm taglist_46.zip 
ls
git init
git add .
ls
git status .
git commit
ls
cd ../../
ls -la
ls
cd local_vim_plugins/
ls
cd tabline.vim/
ls
cd ../
ls
cd ../
ls
cd V
cd VCOMMON/
ls
cd ../local_vim_plugins/
git clone http://git.code.sf.net/p/vim-latex vim-latex-vim-latex
git clone http://git.code.sf.net/p/vim-latex.git vim-latex-vim-latex
git clone http://git.code.sf.net/p/vim-latex/vim-latex.git vim-latex-vim-latex
ls
cd vim-latex-vim-latex/
ls
cd ../
ls
git clone http://git.code.sf.net/p/vim-latex/vim-latex.git
ls
diff vim-latex vim-latex-vim-latex/
rm -rf vim-latex*
git clone http://git.code.sf.net/p/vim-taglist/vim-taglist.git
ls
cd ../.vim/bundle/
ls
mv vim-latex/ vim-latex-old
git clone http://git.code.sf.net/p/vim-latex/vim-latex.git
ls
cp -r taglist/ ~/local_vim_plugins/
rm taglist/ tabline.vim/
rm -rf taglist/ tabline.vim/
ls
cd ../
ls
rm ack.tar.gz 
cd autoload/
ls
rm pathogen.vim 
ls
cd ../
ls
cd backups/
ls
cd ../colors/
ls
cd ../doc/
ls
rm ack.txt 
cd ../plugin/
ls
rm ack.vim 
ls
cd ../../../
cd section_sender/include/
ls
vim section_sender.h 
cd ../../section_builder/include/
ls
nvim section_builder.h 
cd ../
ls
cd src/
ls
nvim section_sender_env.*
ls
nvim *.h *.c
cd ../../../lib/fpga_interface/dragon_src/
ls
ack fif_add_scheduled
nvim fif_psi.c
make debug_print 
make debug_print | grep HARDWARE
cd tftpboot/tlvs/Phase_7/
ls
print_tlv_detailed default.tlv 
hexdump -C default.tlv 
cd 4D_Tintagel/WORKING/4D_Overlay/target_src/bin/tlv_processor/res/spec/
vim TerraceQAM.xml 
vim full_*
print_tlv_detailed last_good.tlv 
sqlite3 datastore.db 
cat component_version.txt 
ls
cat output_err_log
ls
vim ifacade_dump.txt 
git clone file://home/jeremyro/VCOMMON/vim-vecima/
git clone file://home/jeremyro/VCOMMON/vim-vecima/.git/
git clone file://home/jeremyro/VCOMMON/vim-vecima
git clone /home/jeremyro/VCOMMON/vim-vecima
ls
cd vim-vecima/
ls
cd after/
ls
cd ftplugin/
ls
git lg
cd ../..
ls
cd ../
rm -rf vim-vecima/
ls
cd ../../../
cd VCOMMON/vim-vecima/
ls
ls -la
git config --bool core.bare true
rm -rf after/ ftdetect/ ftplugin/ syntax/
ls
ls -la
cd .git/
ls
cd branches/
ls
ls -la
cd ../
ls
cd objects/
ls
ls -la
cd 67/
ls
cd ../
ls
cd pack/
ls
cd ../
ls
cd ../../
ls
cd .git/
ls
cd refs/
ls
cd heads/
ls
cd ../
du . -hs
cd ../
cd ../../
ls
cd local_vim_plugins/
ls
cd tabline.vim/
ls
clear
git config --bool core.bare true
ls
rm -rf plugin/ README.md screenshots/
cd ../
ls
cd taglist/
git config --bool core.bare true
ls
rm -rf doc/ plugin/
