class Solution {
  int thirdMax(List<int> nums) {
    const nth = 3;
    var topN = <int>[];
    var minIndex = 0;
    for (var n in nums) {
      insertIntoTopN:
      if (topN.length < nth || n > topN[minIndex]) {
        for (var v in topN) {
          if (n == v) {
            // Don't insert, it's already there.
            break insertIntoTopN;
          }
        }
        if (topN.length < nth) {
          topN.add(n);
        } else {
          topN[minIndex] = n;
        }
        minIndex = _indexOfMinValue(topN);
      }
    }
    if (topN.length < nth) {
      return topN.reduce(max);
    }
    return topN[minIndex];
  }

  int _indexOfMinValue(List<int> nums) {
    if (nums.isEmpty) {
      throw ArgumentError(nums);
    }
    var result = 0;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] < nums[result]) {
        result = i;
      }
    }
    return result;
  }
}