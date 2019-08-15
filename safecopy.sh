#!/usr/bin/env bash

# Copy the dotfiles to the user's home directory, creating backups (default suffixed with "~") for any existing files

rsync   --exclude ".git/" \
        --exclude ".idea/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude ".macos" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		--exclude "safecopy.sh" \
		-avh --no-perms --backup . ~/;
