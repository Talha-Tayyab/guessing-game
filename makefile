SCRIPT = guessinggame.sh
README = README.md

.PHONY: all clean

all: $(README)

$(README): $(SCRIPT)
	@echo "# Guessing Game" > $(README)
	@echo "" >> $(README)
	@echo "**Date/time generated:** $$(date)" >> $(README)
	@echo "" >> $(README)
	@echo "**Lines of code in $(SCRIPT):** $$(wc -l < $(SCRIPT))" >> $(README)

clean:
	rm -f $(README)
