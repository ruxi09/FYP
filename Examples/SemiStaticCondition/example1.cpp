/*
In this example, we define a template called SelectInt that takes a single
Boolean template parameter B. The SelectInt template uses the 
boost::mpl::if_ template to select the int type if B is true, or the long
type if B is false.

The SelectInt template has a nested type member that represents the selected
type. We can then use the type member to declare variables of the selected type

You can use the boost::mpl::if_ template to create semi-static conditions for
other types as well. For example, you could use it to select a function pointer
type, or a class template specialization, based on a compile-time Boolean value.
*/

#include <boost/mpl/if.hpp>
#include <iostream>

template <bool B>
struct SelectInt
{
    typedef typename boost::mpl::if_<B, int, long>::type type;
};

int main()
{
    // Select the int type if B is true, or the long type if B is false
    SelectInt<true>::type a = 10;
    SelectInt<false>::type b = 20;

    std::cout << a << std::endl;
    std::cout << b << std::endl;

    return 0;
}
