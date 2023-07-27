.PHONY: all
all: toUpperBrach toUpperBranchless toUpperBranchLessOptimised

toUpperBrach: toUpperBrach.cpp
	g++ -o toUpperBrach toUpperBrach.cpp -std=c++20

toUpperBranchless: toUpperBranchless.cpp
	g++ -o toUpperBranchless toUpperBranchless.cpp -std=c++20

toUpperBranchLessOptimised: toUpperBranchLessOptimised.cpp
	g++ -o toUpperBranchLessOptimised toUpperBranchLessOptimised.cpp -std=c++20

.PHONY: install
install:
	mkdir -p binaries
	cp -p toUpperBrach binaries
	cp -p toUpperBranchless binaries
	cp -p toUpperBranchLessOptimised binaries

.PHONY: clean
clean:
	rm -f toUpperBrach
	rm -f toUpperBranchless
	rm -f toUpperBranchLessOptimised