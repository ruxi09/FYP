#include <iostream>
#include <vector> 

using namespace std;

void doModulus( vector<int> &vec , int mod ){
  for( int i = 0 ; i<vec.size() ; i++ )
  {
      vec[i] = vec[i] % mod ;
  }
}

int main(){
  vector<int> a;
  int modulus = 12;
  for (int i = 1; i <=7 ; i++){
        a.push_back(i*i*i);
  }

  doModulus(a, modulus);

  for (auto i = a.begin(); i != a.end(); ++i) 
        cout << *i << " "; 
  
  return 0;
}