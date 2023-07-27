#include <iostream>

using namespace std;

void ToUpperBrachless(char* d, int count){
  // takes around 1100 milisecond
  for(int i = 0; i < count; i++){
    d[i] = (d[i] *!(d[i] >= 'a' && d[i] <= 'z')) + (d[i] - 32) * (d[i] >= 'a' && d[i] <= 'z');
  }
}

int main(){
  char example[5] = "abcd";
  ToUpperBrachless(example, 5);
  cout<<(example);
  return 0;
}