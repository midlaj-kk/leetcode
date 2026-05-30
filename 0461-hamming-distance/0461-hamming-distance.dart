class Solution {
  int hammingDistance(int x, int y) {
    int result = 0;
    int xor = x ^ y;
    while (xor > 0) {
      final remainder = xor % 2;
      result += remainder;
      xor ~/= 2;
    }
    return result;
  }
}