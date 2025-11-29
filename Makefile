## NOTE ##################################################
# I don't want to forget this command but I don't know if
# this should be added to a Haskell-specific file, so I'm
# just adding a simple Makefile for now.

.PHONY: start
start:
	ghciwatch --enable-eval --log-filter "ghciwatch=warn"
