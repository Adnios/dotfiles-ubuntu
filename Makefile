# https://github.com/rafi/vim-config/blob/master/Makefile
SHELL = /bin/bash
vim := $(if $(shell which nvim),nvim,$(shell which vim))
vim_version := '${shell $(vim) --version}'
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install: create-dirs update-plugins

update: update-repo update-plugins

upgrade: update

create-dirs:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}

update-repo:
	git pull --ff --ff-only

update-plugins:
	$(vim) -V1 -es -i NONE -N --noplugin -u ~/.config/nvim/init.lua \
		-c "try | call dein#clear_state() | call dein#update() | finally | messages | qall! | endtry"

uninstall:
	rm -rf "$(XDG_CACHE_HOME)/vim"

.PHONY: install create-dirs update-repo update-plugins uninstall
