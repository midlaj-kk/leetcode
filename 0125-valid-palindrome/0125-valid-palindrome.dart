class Solution {
  bool isPalindrome(String s) {
  s = s.toLowerCase();

  String bag = '';

  for (int i = 0; i < s.length; i++) {
    int a = s.codeUnitAt(i);
    if ((a >= 48 && a < 58) || (a >= 97 && a <= 122)) {
      bag += s[i];
    }
  }

  int r = bag.length - 1;
  bool pal = true;
if(bag.length<=1){
  return true;
}
else{

  for (int j = 0; j < (bag.length / 2).floor(); j++) {
    if (bag[j] != bag[r]) {
      pal = false;
      break;
    }
    r--;
  }
}

  return pal;
}


  }