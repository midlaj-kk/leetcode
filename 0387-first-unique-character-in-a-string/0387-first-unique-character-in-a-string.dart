class Solution {
  int firstUniqChar(String s) {
      final inputArr = s.split('');
      for (final value in inputArr){
          if(inputArr.indexOf(value) == inputArr.lastIndexOf(value) ){
              return inputArr.indexOf(value);
          }
      }
      return -1;
  }
}