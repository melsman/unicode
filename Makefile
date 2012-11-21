FILES=unicode.mlb unicode_test.mlb UTF8.sig Utf8.sml UNICODE_CHARS.sig UnicodeChars.sml unicode.sml
MLCOMP=mlton

all: $(FILES)
	$(MLCOMP) unicode_test.mlb

clean:
	rm -rf *~ MLB unicode_test