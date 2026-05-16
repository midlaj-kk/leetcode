class Solution {
  int maximumWealth(List<List<int>> accounts) {
    var tempMax = 0;
    for (final account in accounts) {
        var max = 0;
        for (final bank in account) {
            max += bank;
        }

        if (max > tempMax) {
            tempMax = max;
        }
    }
    return tempMax;
  }
}