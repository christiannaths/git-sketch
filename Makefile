BIN_DIR   		= /usr/local/bin
LOADER    		= git-sketch
INSTALL_DIR		= $(BIN_DIR)/$(LOADER)-pkg
DEPS_DIR			= $(INSTALL_DIR)/bin

all:
		@echo "usage: make [install|uninstall]"

install:
		install -d -m 0755 $(INSTALL_DIR)
		install -d -m 0755 $(DEPS_DIR)
		install -m 0755 $(LOADER) $(INSTALL_DIR)
		install -m 0755 ./bin/jq $(DEPS_DIR)
		/bin/ln -nsf $(INSTALL_DIR)/$(LOADER) $(BIN_DIR)/$(LOADER)

uninstall:
		test -d $(BIN_DIR) && \
		cd $(BIN_DIR) && \
		rm -f $(LOADER) && \
		rm -rf $(INSTALL_DIR)