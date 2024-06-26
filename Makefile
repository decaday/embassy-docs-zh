
all: clean build

ANTORA_CLI ?= node_modules/.bin/antora

clean:
	rm -Rf build

build:
	$(ANTORA_CLI) --fetch antora-playbook-zh.yaml --stacktrace

local:
	$(ANTORA_CLI) --fetch local-antora-playbook-zh.yaml

version:
	@$(ANTORA_CLI) -v

.PHONY: all clean build version
