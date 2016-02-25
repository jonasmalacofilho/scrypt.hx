test: _PHONY
	haxe test.hxml

ndll/Linux64/scrypt.ndll: src/scrypt.c
	gcc src/scrypt.c -shared -o ndll/Linux64/scrypt.ndll -fPIC

.PHONY: _PHONY

