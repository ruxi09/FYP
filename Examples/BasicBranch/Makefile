.PHONY: all
all: basic basicBranchless

basic: basic.cpp
	g++ -o basic basic.cpp -std=c++20

basicBranchless: basicBranchless.cpp
	g++ -o basicBranchless basicBranchless.cpp -std=c++20

.PHONY: install
install:
	mkdir -p binaries
	cp -p basic binaries
	cp -p basicBranchless binaries

.PHONY: clean
clean:
	rm -f basic
	rm -f basicBranchless