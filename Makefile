FILES=unicode.mlb unicode_test.mlb UTF8.sig Utf8.sml UNICODE_CHARS.sig UnicodeChars.sml unicode.sml
MLCOMP ?= mlton

build:
	@echo "No binaries to build."
	@echo "Run 'make test' to run an acceptance test."

unicode_test: $(FILES)
	$(MLCOMP) -output unicode_test unicode_test.mlb

test: unicode_test
	@echo "Running test..."
	@./unicode_test > unicode_test.out
	@[[ `diff unicode_test.ok unicode_test.out` ]] && \
           (echo "***Test failed***") || \
           (echo "Test succeeded.")

install:
	@echo "No binaries to install"

clean:
	rm -rf *~ MLB unicode_test unicode_test.out
