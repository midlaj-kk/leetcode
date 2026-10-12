class Solution {
  String convertToBase7(int num) {
    if(num == 0){
        return '0';
    }
    if(num < 0){
        return '-' + convertToBase7(-num);
    }
    String base7 = '';

    while(num > 0){
        base7 = (num % 7).toString() + base7;
        num~/=7;
    }
    return base7;
  }
}