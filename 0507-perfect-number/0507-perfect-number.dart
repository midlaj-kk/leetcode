class Solution {
  bool checkPerfectNumber(int num) {
    if(num<=1){
        return false;
    }
    int sum=0;
    int divisor=0;
    for(int i=1;i<num;i++){
        if(num%i==0){
            divisor+=i;
        }
    }
    if(num==divisor){
         return true;
    }else{
        return false;
    }
  }
}