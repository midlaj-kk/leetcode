class Solution {
  int mySqrt(int x) {
    if (x < 2) return x; // handle small cases

    int left = 1;
    int right = x ~/ 2; // sqrt(x) <= x/2 for x >= 2

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      int sq = mid * mid;

      if (sq == x) return mid; // exact square root found
      if (sq < x) {
        left = mid + 1; // move right
      } else {
        right = mid - 1; // move left
      }
    }

    return right; // right will be the integer sqrt
  }
}