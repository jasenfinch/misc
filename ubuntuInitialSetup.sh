## update system
sudo apt-get update
sudo apt-get dist-upgrade

## install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable

## install terminator
sudo apt-get install terminator

## install vim
sudo apt-get install vim

## install and setup git
sudo apt-get install git

git config --global user.name *username*
git config --global user.email *emailAddress*

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
# then add SSH key to github account

## install zsh
sudo apt-get install zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

## get dotfiles
cd Documents
git clone git@github.com:jasenfinch/dotfiles.git
cp dotfiles/.vimrc dotfiles/.zshrc ~
cd

## install unity-tweak tool
sudo apt-get install unity-tweak-tool

## install flatabulous-theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons

## install r
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'
sudo apt-get update
sudo apt-get install r-base

## install Rstudio and Rstudio server
sudo apt install libjpeg62
sudo apt install libgstreamer-plugins-base0.10-0 libgstreamer0.10-0

wget --tries=3 --timeout=120 https://download1.rstudio.org/rstudio-xenial-1.1.383-amd64.deb
sudo dpkg -i rstudio-*-amd64.deb

wget https://download2.rstudio.org/rstudio-server-1.1.383-amd64.deb
sudo dpkg -i rstudio-server*-amd64.deb

## install latex
sudo apt-get install texlive-full

## install java
sudo apt-get install default-jdk default-jre
sudo R CMD javareconf

## install apt dependencies for R packages
sudo apt-get install libcurl4-openssl-dev libxml2-dev libnetcdf-dev udunits-bin libudunits2-dev libssh2-1-dev 

## install slack
# download from https://slack.com/downloads/linux
sudo dpkg --install Downloads/slack-desktop-3.0.2-amd64.deb 
