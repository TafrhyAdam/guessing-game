


SCRIPT = guessinggame.sh


README.md:
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in $(SCRIPT): $(shell wc -l < $(SCRIPT))" 
>> README.md

