export http_proxy=http://172.16.0.89:80
export https_proxy=http://172.16.0.89:80
export no_proxy=files.melicloud.com
export NVM_DIR=/usr/local/nvm
NODE_VERSION=0.12.5

ui-install:
	@echo "Installing Node"
	@chmod 777 node_install.sh
	sh node_install.sh

ui-test:

ui-build:
	@echo "Running npm and bower install"
	. ${NVM_DIR}/nvm.sh && nvm use $(NODE_VERSION) && npm-cache install npm
	@echo "Star Gulp compiling"
	. ${NVM_DIR}/nvm.sh && nvm use $(NODE_VERSION) && gulp build && gulp dist
	@echo "End gulp compiling"
