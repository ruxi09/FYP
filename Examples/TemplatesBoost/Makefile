.PHONY: all
all:  are_same are_same_call_if parity parity_call_if example_call_if

are_same: are_same.cpp
	g++ -o are_same are_same.cpp -std=c++20

are_same_call_if: are_same_call_if.cpp
	g++ -o are_same_call_if are_same_call_if.cpp -std=c++20

parity: parity.cpp
	g++ -o basic_template basic_template.cpp -std=c++20

parity_call_if: parity_call_if.cpp
	g++ -o parity_call_if parity_call_if.cpp -std=c++20

example_call_if: example_call_if.cpp
	g++ -o basicBranchless basicBranchless.cpp -std=c++20

.PHONY: install
install:
	mkdir -p binaries
	cp -p are_same binaries
	cp -p are_same_call_if binaries
	cp -p parity binaries
	cp -p parity_call_if binaries
	cp -p example_call_if binaries

.PHONY: clean
clean:
	rm -f are_same
	rm -f are_same_call_if
	rm -f parity
	rm -f parity_call_if
	rm -f example_call_if