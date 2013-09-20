NODE_MODULE_COMMANDS_PATH=./node_modules/.bin/
MOCHA=$(NODE_MODULE_COMMANDS_PATH)mocha

install-packages:
	npm install

run-unit-tests:
	@NODE_ENV=test $(MOCHA) --timeout 5000 ./tests/unit

run-all-tests:
	@$(MAKE) run-unit-tests