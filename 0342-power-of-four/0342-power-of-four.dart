class Solution {
  bool isPowerOfFour(int n) {
    if(n<=0) return false;
    while(1<n){
        if(n%4!=0){
            return false;
        }n~/=4;
    }return true;
  }
}