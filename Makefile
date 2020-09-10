foo.wasm: foo.wat
	wat2wasm foo.wat

foo.wat: foo.rkt rackasm.rkt
	./compiler.rkt < foo.rkt > foo.wat

.PHONY: clean

clean:
	rm -f foo.wat foo.wasm
