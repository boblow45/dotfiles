#!/bin/bash

# ------ Global Symbols                              
HOME_STRING=$(echo ~)
USERNAME=$(whoami)
REPO_DIR=$(echo $HOME_STRING/gitrepos)

# ------ Install New Software                         
# * APT
APT_INSTALL_LIST="git gtkterm xfreerdp cpputest gcovr google-mock"
echo "Updating & Upgrading . . ."
sudo apt-get update && sudo apt-get upgrade -y
echo "Installing $APT_INSTALL_LIST"
sudo apt-get install $APT_INSTALL_LIST -y

# * SNAP
SNAP_INSTALL_LIST="code --classic"
echo "Installing $SNAP_INSTALL_LIST"
sudo snap install $SNAP_INSTALL_LIST -y


# ------ Make New Directories
DIRS_TO_MAKE="$HOME_STRING/scripts $REPO_DIR"
echo "Creating directories: $DIRS_TO_MAKE"
mkdir -p $DIRS_TO_MAKE

# ------ Update Dot Files
# This has to already be cloned to be available
~/dotfiles/appendBashrc.sh
cp ./.gitconfig ~/
cp ./.bash_aliases ~/
sudo usermod -a -G dialout $USERNAME		# Allows mounting of removal storage by pmount
sudo usermod -a -G plugdev $USERNAME		# Full and direct access to serial ports

# ------ Clone Git Repositories                          
GITHUB_URL="https://github.com"
REPOS_TO_CLONE=(\
"boblow45/C_libraries.git" \
"boblow45/Python_template.git" \
"boblow45/cpputest_example.git" \
"boblow45/stmdrone.git" \
)

for i in ${REPOS_TO_CLONE[@]}; do
	REPO_NAME=$(echo $i | awk -F '/' '{print $2}')
	REPO_NAME=$(echo $REPO_NAME | sed 's/\(.*\)\..*/\1/')
	REPO_DESTINATION="$REPO_DIR/$REPO_NAME"
	echo "Cloning $i into $REPO_DESTINATION"
	git clone $GITHUB_URL/$i $REPO_DESTINATION
done

# ------ End
echo "Make sure to run 'source ~/.bashrc' for new shell configurations to take hold!"
exit 0

