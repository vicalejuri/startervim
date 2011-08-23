TARGET = $(HOME)
BACKUP = $(HOME)/.vim-backup
PWD    = `pwd`

backup:
	@echo "Backuping .vim and .vimrc to folder $(BACKUP)"
	@if test ! -d $(BACKUP); then mkdir $(BACKUP); fi
	- @if test -e $(TARGET)/.vim; then 	mv $(TARGET)/.vim $(BACKUP)/.vim; fi
	- @if test -e $(TARGET)/.vimrc; then 	mv $(TARGET)/.vimrc $(BACKUP)/.vimrc; fi
	- @if test -e $(TARGET)/.vimrc-keymaps; then 	mv $(TARGET)/.vimrc-keymaps $(BACKUP)/.vimrc-keymaps; fi
	- @if test -e $(TARGET)/.vimrc-au; then 	mv $(TARGET)/.vimrc-au 	$(BACKUP)/.vimrc-au; fi
	- @if test -e $(TARGET)/.vimrc-defaults; then 	mv $(TARGET)/.vimrc-defaults $(BACKUP)/.vimrc-defaults; fi
	- @if test -e $(TARGET)/.vimrc-helpers; then 	mv $(TARGET)/.vimrc-helpers $(BACKUP)/.vimrc-helpers; fi


install: 
	@cp -R $(PWD)/vim $(TARGET)/.vim
	@cp $(PWD)/vimrc $(TARGET)/.vimrc
	@cp $(PWD)/vimrc-keymaps $(TARGET)/.vimrc-keymaps
	@cp $(PWD)/vimrc-au $(TARGET)/.vimrc-au
	@cp $(PWD)/vimrc-defaults $(TARGET)/.vimrc-defaults
	@cp $(PWD)/vimrc-helpers $(TARGET)/.vimrc-helpers
	vim -s .post-install.vim
	echo "Installation complete" 					

uninstall: 
	@echo "Uninstalling"
	- @rm -rf $(TARGET)/.vim
	- @rm -rf $(TARGET)/.vimrc
	- @rm -rf $(TARGET)/.vimrc-{keymaps,au,defaults,helpers}

restore_backup: uninstall
	@echo "Restoring backup at $(BACKUP)"
	- @if test -e $(BACKUP)/.vim; then mv $(BACKUP)/.vim $(TARGET)/.vim; fi
	- @if test -e $(BACKUP)/.vimrc; then mv $(BACKUP)/.vimrc $(TARGET)/.vimrc; fi
	- @if test -e $(BACKUP)/.vimrc-keymaps; then mv $(BACKUP)/.vimrc-keymaps $(TARGET)/.vimrc-keymaps; fi
	- @if test -e $(BACKUP)/.vimrc-au; then mv $(BACKUP)/.vimrc-au $(TARGET)/.vimrc-au; fi
	- @if test -e $(BACKUP)/.vimrc-defaults; then mv $(BACKUP)/.vimrc-defaults $(TARGET)/.vimrc-defaults; fi
	- @if test -e $(BACKUP)/.vimrc-helpers; then mv $(BACKUP)/.vimrc-helpers $(TARGET)/.vimrc-helpers; fi


all: backup install

.PHONY: install backup uninstall restore_backup 
