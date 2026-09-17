
class Solution {
  String reverseStr(String s, int k) {
    List<String> result = s.split('');
    for (int i = 0; i < s.length; i += 2 * k) {
      int start = i;
      int end = (i + k - 1 < s.length) ? i + k - 1 : s.length - 1;
      while (start <= end) {
        String temp = result[start];
        result[start] = result[end];
        result[end] = temp;
        start++;
        end--;
      }
    }

    return result.join();
  }
}