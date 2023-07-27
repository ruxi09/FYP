#include <type_traits>
#include <iostream>

using namespace std;

template<typename T, typename U>
struct AreSame: std::false_type{};

template<typename T>
struct AreSame<T,T>: std::true_type{};

int main(){
  cout<<AreSame<int,int>::value<<"\n"; //true
  cout<<AreSame<int,double>::value<<"\n"; // false
  return 0;
}