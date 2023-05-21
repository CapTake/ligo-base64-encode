ligo_compiler?=rm -rf build && mkdir build && docker run --rm -v "$(PWD)":"$(PWD)" -w "$(PWD)" ligolang/ligo:stable

.PHONY: test
test:
	@$(ligo_compiler) run test ./test/base64.test.mligo
build:
	@$(ligo_compiler) compile expression --init-file lib/base64.jsligo --michelson-format json jsligo "base64_encode" >build/base64_encode.json
