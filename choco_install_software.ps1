# Install script for Cillian
# Created 11.09.2019

ECHO Installing apps

ECHO Configure chocolatey
choco feature enable -n allowGlobalConfirmation

# Install browers
choco install googlechrome

# Install programming languages
choco install python3
choco install jre8

ECHO Install Text Editors & IDEs
choco install visualstudiocode
choco install notepadplusplus
choco install sublimetext3
choco install pycharm-community

choco install 7zip
choco install adobereader 

# DEVOPS
choco install slack

choco install openssh
choco install docker
choco install virtualbox
choco install mobaxterm
choco install git
choco install tortoisesvn
choco install cygwin
choco install mingw
choco install curl
choco install cmake
choco install diffmerge

# Android Stuff
choco install androidstudio
choco install android-sdk
choco install adb

# Used to access FTP servers
choco install filezilla

# Latex stuff
choco install miktex
choco install texstudio



choco feature disable -n allowGlobalConfirmation