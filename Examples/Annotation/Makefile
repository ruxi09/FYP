.PHONY: all
all: modulus modulus_annotation

modulus: modulus.cpp
	g++ -o modulus modulus.cpp -std=c++20

modulus_annotation: modulus_annotation.cpp
	g++ -o modulus_annotation modulus_annotation.cpp -std=c++20

.PHONY: install
install:
	mkdir -p binaries
	cp -p modulus binaries
	cp -p modulus_annotation binaries

.PHONY: clean
clean:
	rm -f modulus
	rm -f modulus_annotation