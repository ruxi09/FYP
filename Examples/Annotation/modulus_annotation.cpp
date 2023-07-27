#include <iostream>
#include <vector> 

using namespace std;

void doModulusAnnotation( vector<int> &vec , int mod ){
  for( int i = 0 ; i<vec.size() ; i++ )
  {
    [[unlikely]] if( vec[i] >= mod ){
      vec[i] = vec[i] % mod ;
         
    }else {
      vec[i] = vec[i] ;
    }
  }
}

int main(){
  vector<int> a;
  int modulus = 12;
  for (int i = 1; i <=7 ; i++){
        a.push_back(i*2);
  }

  doModulusAnnotation(a, modulus);

  for (auto i = a.begin(); i != a.end(); ++i) 
        cout << *i << " "; 
  
  return 0;
}