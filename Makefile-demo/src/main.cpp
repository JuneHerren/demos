#include"demo.hpp"
#include<iostream>

using namespace std;
 int main(){
     int n;
     cin >> n;
     vector<int> vec(n);
     for(int i = 0; i < n; i++){
         cin >> vec[i];
     }
     int target;
     cin >> target;
     Solution solution;
     auto it = solution.twoSum(vec,target);
     for(auto c: it) cout << c;
     cout << endl;
     return 0;
 }
