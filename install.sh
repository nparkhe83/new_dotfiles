#!/bin/zsh

#############################################################
#############################################################
##                                                         ##
## This script                                             ##
##  - Installs MacOS XCode & Sets Mac Configurations       ##
##                                                         ##
#############################################################
#############################################################

# Run the MacOS Script to install git
# Also sets Scroll direction to traditional from Natural
./macOS.sh

# dotfiles directory
dotfilesdir="${HOME}/new_dotfiles"

cd "${dotfilesdir}" || exit

# list of files/folders to symlink in ${homedir}
# files=(zshrc zprofile zprompt bashrc bash_profile bash_prompt aliases functions envt_vars paths zsh_plugins)
files=(zshrc aliases)

# create symlinks (will overwrite old dotfiles)
for file in "${files[@]}"; do
  echo "Creating symlink to $file in home directory."
  ln -sf "${dotfilesdir}/.${file}" "${HOME}/.${file}"
done
unset file
