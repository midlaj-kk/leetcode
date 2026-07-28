class Solution {
 bool repeatedSubstringPattern(String s) {
  String doubled = s + s;
  
  // Remove first and last characters
  String trimmed = doubled.substring(1, doubled.length - 1);
  
  return trimmed.contains(s);
}
}