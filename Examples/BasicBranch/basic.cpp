#include <iostream>

using namespace std;

int smaller_Branch(int a, int b){
  if(a < b){
    return a;
  }
  else {
    return b;
  }
}
/*
mov ebx, dword per [b]
cmp dword ptr [a], ebx
cmov1 ebx, dword ptr [a]
*/

int main(){
  int first = 123;
  int second = 345;
  int min = smaller_Branch(first, second);
  cout << min;
  return 0;
}