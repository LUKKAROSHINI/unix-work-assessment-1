
# Makefile for the guessinggame.sh program

# Define the default target
all: guessinggame.sh

# No actual build step needed, just display instructions
guessinggame.sh:
	@echo "To play the guessing game, run: ./guessinggame.sh"

# Clean up any generated files (not applicable in this case)
clean:

.PHONY: all clean
