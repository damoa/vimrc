#/bin/bash

export HOME=~
export CODE_FOLDER=$HOME/code
export DOWNLOADS_FOLDER=$HOME/Downloads
export VIM_HOME=$HOME/.vim
export VIM_BUNDLE_HOME=$VIM_HOME/bundle
export VIM_PACK_HOME=$VIM_HOME/pack
export VIM_PLUGINS_HOME=$VIM_PACK_HOME/my_plugins/start
export VIM_TPOPE_HOME=$VIM_PACK_HOME/tpope/start

export ACK_FOLDER=$VIM_PLUGINS_HOME/ack.vim
export COC_FOLDER=$VIM_PACK_HOME/coc/start
export COMMITTIA_FOLDER=$VIM_PLUGINS_HOME/committia.vim
export NERDTREE_FOLDER=$VIM_PLUGINS_HOME/nerdtree
export FZF_BIN_FOLDER=~/.fzf
export FZF_FOLDER=$VIM_PLUGINS_HOME/fzf
export FZF_VIM_FOLDER=$VIM_PLUGINS_HOME/fzf.vim
export RAINBOW_PARENTHESES_FOLDER=$VIM_PLUGINS_HOME/rainbow_parentheses.vim
export RANGER_FOLDER=$VIM_PLUGINS_HOME/ranger
export VIM_AI_FOLDER=$VIM_PLUGINS_HOME/vim-ai
export VIM_AIRLINE_FOLDER=$VIM_PACK_HOME/dist/start/vim-airline
export VIM_AIRLINE_THEMES_FOLDER=$VIM_PACK_HOME/dist/start/vim-airline-themes
export VIM_COMMENTARY_FOLDER=$VIM_TPOPE_HOME/commentary
export VIM_EASYMOTION_FOLDER=$VIM_PLUGINS_HOME/vim-easymotion
export VIM_FUGITIVE_FOLDER=$VIM_TPOPE_HOME/fugitive
export VIM_GITGUTTER_FOLDER=$VIM_PACK_HOME/airblade/start/vim-gitgutter
export VIM_RHUBARB_FOLDER=$VIM_BUNDLE_HOME/vim-rhubarb
export VIM_SLEUTH_FOLDER=$VIM_TPOPE_HOME/sleuth
export VIM_SOLARIZED8_FOLDER=$VIM_PACK_HOME/themes/opt/solarized8
export VIM_SURROUND_FOLDER=$VIM_TPOPE_HOME/surround

# Install apt packages
sudo apt update && sudo apt upgrade -y && sudo apt install -y ack curl git mariadb-client python3 python3-pip python3.11-venv ranger tmux tree

# install nodejs using subshell
(
  curl -sL install-node.vercel.app/lts | sudo bash
)

# create vim 8 plugin folder
mkdir -p $VIM_PLUGINS_HOME

# Clone vim plugin repositories
if [ ! -d "$VIM_BUNDLE_HOME" ] ; then
  mkdir -p $VIM_BUNDLE_HOME
fi

if [ ! -d "$VIM_TPOPE_HOME" ] ; then
  mkdir -p $VIM_TPOPE_HOME
fi

if [ ! -d "$ACK_FOLDER" ] ; then
  git clone https://github.com/mileszs/ack.vim.git $ACK_FOLDER
fi

if [ ! -d "$COC_FOLDER" ] ; then
  mkdir -p $COC_FOLDER
  cd $COC_FOLDER
  git clone --branch release https://github.com/neoclide/coc.nvim.git --depth=1
  vim -c "helptags coc.nvim/doc/ | q"
  cd $HOME
fi

if [ ! -d "$COMMITTIA_FOLDER" ] ; then
  git clone https://github.com/rhysd/committia.vim.git $COMMITTIA_FOLDER
fi

if [ ! -d "$NERDTREE_FOLDER" ] ; then
  git clone https://github.com/preservim/nerdtree.git $NERDTREE_FOLDER
fi

if [ ! -d "$FZF_BIN_FOLDER" ] ; then
  git clone --depth 1 https://github.com/junegunn/fzf.git $FZF_BIN_FOLDER
  $FZF_BIN_FOLDER/install
fi

if [ ! -d "$FZF_FOLDER" ] ; then
  git clone https://github.com/junegunn/fzf.git $FZF_FOLDER
fi

if [ ! -d "$FZF_VIM_FOLDER" ] ; then
  git clone https://github.com/junegunn/fzf.vim.git $FZF_VIM_FOLDER
fi

if [ ! -d "$RAINBOW_PARENTHESES_FOLDER" ] ; then
  git clone https://github.com/kien/rainbow_parentheses.vim.git $RAINBOW_PARENTHESES_FOLDER
fi

if [ ! -d "$RANGER_FOLDER" ] ; then
  git clone https://github.com/francoiscabrol/ranger.vim.git $RANGER_FOLDER
fi

if [ ! -d "$VIM_AI_FOLDER" ] ; then
  git clone https://github.com/madox2/vim-ai.git $VIM_AI_FOLDER
fi

if [ ! -d "$VIM_AIRLINE_FOLDER" ] ; then
  mkdir -p $VIM_AIRLINE_FOLDER
  git clone https://github.com/vim-airline/vim-airline $VIM_AIRLINE_FOLDER
fi

if [ ! -d "$VIM_AIRLINE_THEMES_FOLDER" ] ; then
  mkdir -p $VIM_AIRLINE_THEMES_FOLDER
  git clone https://github.com/vim-airline/vim-airline-themes $VIM_AIRLINE_THEMES_FOLDER
fi

if [ ! -d "$VIM_COMMENTARY_FOLDER" ] ; then
  git clone https://tpope.io/vim/commentary.git $VIM_COMMENTARY_FOLDER
  cd $VIM_COMMENTARY_FOLDER
  vim -u NONE -c "helptags commentary/doc" -c q
  cd $HOME
fi

if [ ! -d "$VIM_EASYMOTION_FOLDER" ] ; then
  git clone https://github.com/easymotion/vim-easymotion.git $VIM_EASYMOTION_FOLDER
fi

if [ ! -d "$VIM_FUGITIVE_FOLDER" ] ; then
  git clone https://tpope.io/vim/fugitive.git $VIM_FUGITIVE_FOLDER
  cd $VIM_FUGITIVE_FOLDER
  vim -u NONE -c "helptags fugitive/doc" -c q
  cd $HOME
fi

if [ ! -d "$VIM_GITGUTTER_FOLDER" ] ; then
  mkdir -p $VIM_GITGUTTER_FOLDER
  git clone https://github.com/airblade/vim-gitgutter.git $VIM_GITGUTTER_FOLDER
  cd $VIM_GITGUTTER_FOLDER
  vim -u NONE -c "helptags vim-gitgutter/doc" -c q
  cd $HOME
fi

if [ ! -d "$VIM_RHUBARB_FOLDER" ] ; then
  git clone https://github.com/tpope/vim-rhubarb.git $VIM_RHUBARB_FOLDER
  cd $VIM_RHUBARB_FOLDER
  vim -u NONE -c "helptags vim-rhubarb/doc" -c q
  cd $HOME
fi

if [ ! -d "$VIM_SLEUTH_FOLDER" ] ; then
  git clone https://tpope.io/vim/sleuth.git $VIM_SLEUTH_FOLDER
  cd $VIM_SLEUTH_FOLDER
  vim -u NONE -c "helptags sleuth/doc" -c q
  cd $HOME
fi

if [ ! -d "$VIM_SOLARIZED8_FOLDER" ] ; then
  mkdir -p $VIM_SOLARIZED8_FOLDER
  git clone https://github.com/lifepillar/vim-solarized8.git $VIM_SOLARIZED8_FOLDER
fi

if [ ! -d "$VIM_SURROUND_FOLDER" ] ; then
  git clone https://tpope.io/vim/surround.git $VIM_SURROUND_FOLDER
  cd $VIM_SURROUND_FOLDER
  vim -u NONE -c "helptags surround/doc" -c q
  cd $HOME
fi

if [ ! -d "$CODE_FOLDER" ] ; then
  mkdir -p $CODE_FOLDER
fi

cd $CODE_FOLDER
git clone https://github.com/RMNCLDYO/perplexity-ai-toolkit.git
cd $HOME

if [ ! -d "$DOWNLOADS_FOLDER" ] ; then
  mkdir -p $DOWNLOADS_FOLDER
fi

# Add MariaDB Connector/C
cd $DOWNLOADS_FOLDER
wget https://downloads.mariadb.com/MariaDB/mariadb_repo_setup
chmod +x mariadb_repo_setup
sudo ./mariadb_repo_setup
sudo apt install libmariadb3 libmariadb-dev
rm mariadb_repo_setup
cd $HOME

# configure tmux
echo 'set -g mode-keys vi' > ~/.tmux.conf

echo 'Done!'
