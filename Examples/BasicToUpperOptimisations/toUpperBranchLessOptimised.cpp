#include <iostream>

using namespace std;

void ToUpperBrachlessOptimised(char* d, int count){
  // takes around 471 miliseconds
  for(int i = 0; i< count; i++){
    d[i] -= 32 * (d[i] >= 'a' && d[i] <= 'z');
  }
}

int main(){
  char example[5] = "abcd";
  ToUpperBrachlessOptimised(example, 5);
  cout<<(example);
  return 0;
}