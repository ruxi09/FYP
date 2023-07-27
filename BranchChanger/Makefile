.PHONY: all
all: Example

Example: Example.cpp 
	g++ -o Example Example.cpp  -std=c++20

.PHONY: install
install:
	mkdir -p binaries
	cp -p Example binaries

.PHONY: clean
clean:
	rm -f  Example
