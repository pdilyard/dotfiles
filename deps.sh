#
# Add repositories
#
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt update -y

#
# Install packages
#
sudo apt install -y \
  ack \
  apt-transport-https \
  awscli \
  build-essential \
  ca-certificates \
  curl \
  docker-ce \
  ffmpeg \
  fish \
  git \
  imagemagick \
  jq \
  neovim \
  software-properties-common \
  stow \
  tmux \
  tree \
  lxappearance \
  gtk-chtheme \
  qt4-qtconfig \
  rofi

#
# vim-plug
#
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#
# fisherman
#
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
