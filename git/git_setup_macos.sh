#!/bin/sh

USER_NAME="<user_name>"
USER_EMAIL="<user_email>"

# ==================================
# Git setup in macOS
# ==================================

# Git Configuration ================

git config --global user.name $USER_NAME
git config --global user.email $USER_EMAIL

git config --global core.editor code

git config --list

# SSH Key ==========================

# Install Xcode

# Generate a new SSH key

ssh-keygen -t rsa -b 4096 -C $USER_EMAIL

# Add SSH key to the ssh-agent

eval "$(ssh-agent -s)"

# Modify ~/.ssh/config file to automatically load keys into the ssh-agent and store passphrases in your keychain
# > Overwrite file
# >> Append file

echo "Host *" > ~/.ssh/config
echo " AddKeysToAgent yes" >> ~/.ssh/config
echo " UseKeychain yes" >> ~/.ssh/config
echo " IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config

# Add your SSH private key to the ssh-agent and store your passphrase in the keychain.

ssh-add -K ~/.ssh/id_rsa

# Add the SSH key to your GitHub account

# Copy the SSH key to your clipboard.

pbcopy < ~/.ssh/id_rsa.pub

# Testing your SSH connection

ssh -T git@github.com

# Verify that the fingerprint in the message

# GitHub key fingerprint
# RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48
# RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8

# Hi username! You've successfully authenticated, but GitHub does not provide shell access.