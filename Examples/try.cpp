#include <boost/contract.hpp>
#include <boost/mpl/identity.hpp>
#include <type_traits>
#include <iostream>

int main() {

	// we need to check if this type is numeric we will 
	using T = boost::mpl::identity<int>::type;

	// boost::contract::condition_if_c is similar to boost::contract::condition_if 
	// but boost::contract::condition_if gets either a true structure or a false structure 
	// whose value we can get if we try to call ::value to our structure, 
	// while boost::contract::condition_if_c gets a bool value in the template(normally true and false structures are used in metaprogramming)
	// the same with the boost::contract::call_if and boost::contract::call_if_c functions, they differ only in what parameters they accept in the template

	// will be evaluated at compile time. 
	// If the function template contains a true value, the lambda-function from the first argument 
	// will be executed and depending on what value this lambda-function returns, 
	// a value will be assigned to the variable (the function from the first argument will always be executed at runtime, unlike condition_if_c, 
	// which is executed at compile time and not executed at runtime); otherwise, 
	// if the function template contains a false value, 
	// the variable will have the value we passed in the second argument of condition_if_c
	bool is_T_number = boost::contract::condition_if_c<std::is_arithmetic<T>::value/*check if T is numeric type*/>( 
		[]() {return true;}, // result will be true if the condition from the template will be true(it can also return false to the result variable if you change the function so that it can return a value other than false)
		false // if condition from condition_if_c was false we will return this value(false)
	);

	if (is_T_number) {
		std::cout << "Looks like T is numeric type\n";
	} else {
		std::cout << "Looks like T is not numeric type\n";
	}

	// let's try to call lambda function that will print some text if T is numeric type
	// boost::contract::call_if is also evaluated at compile time, but the function that will be passed as the first argument will be evaluated at runtime
	// if the condition from the boost::contract::call_if template was true at compile time
	boost::contract::call_if_c<std::is_arithmetic<T>::value/*check in compile time if T is numeric type*/>(
		[]() { // function that will be executed if the condition from the template was true
			std::cout << "This lambda-function from boost::contract::call_if_c was called in runtime to say that T is a numeric type\n";
		}
	);

	// we can achieve the same result with boost::contract::call_if 
	// if we remove from condition this ::value because std::is_arithmetic<T> returns either true or false structure
	// and we already get the value true or false when we try to call ::value
	// we can say that boost::contract::call_if calls ::value instead of us this is the only difference
	boost::contract::call_if<std::is_arithmetic<T>/*check in compile time if T is numeric type(is_arithmetic will return false or true structure)*/>(
		[]() { // function that will be executed if the condition from the template was true
			std::cout << "This lambda-function from boost::contract::call_if was called in runtime to say that T is a numeric type\n";
		}
	);

	std::cout << "Press Enter to exit...";
	
	while(std::cin.get() != '\n'); // will run until the user presses enter
	
	return 0;
}

/*
these strings can only be changed in code let's say you can remove a single character from a string if you write the appropriate code but you can't change the contents of this string at runtime let's say you can't make the user enter a string to this variable, since it is no longer considered compile time, but runtime, to do this, use the metaprogramming mechanisms from the boost library
(string from metaprogramming library - https://www.boost.org/doc/libs/1_46_0/libs/mpl/doc/refmanual/string.HTML
function that compare two metaprogramming strings in boost - https://www.boost.org/doc/libs/1_40_0/libs/mpl/doc/refmanual/equal.html )
*/