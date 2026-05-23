class Solution {
  String restoreString(String s, List<int> indices) {
    var result = [];
  for (var i = 0; i < s.length; i++) {
    for (var j = 0; j < s.length; j++) {
      if (i == indices[j]) {
        result.add(s[j]);
      }
    }
  }
  return result.join('');
  }
}