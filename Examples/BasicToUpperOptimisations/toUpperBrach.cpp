#include <iostream>

using namespace std;

void ToUpper_Brach(char* d, int count){
  for(int i = 0; i < count; i++){
    if(d[i] >= 'a' && d[i] <= 'z'){
      d[i] -= 32;
    }
  }
}

int main(){
  char example[5] = "abcd";
  ToUpper_Brach(example, 5);
  cout<<(example);
  return 0;
}