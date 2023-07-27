#include <iostream>

using namespace std;

int smaller_Branchless(int a, int b){
  return a * (a < b) + b * (b <= a);
}
/*
mov ecx, dword ptr [a]
xor r8d, r8d
mov eax, dword ptr [b]
mov ebx, r8d
cmp eax, ecx
setle bl
imul ebx,eax
cmp ecx, eax
setl r8b
imul r8d,ecx
add ebx,r8d
*/

int main(){
  int first = 123;
  int second = 345;
  int minim = smaller_Branchless(first, second);
  cout << (minim);
  return 0;
}