class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    int count = 0;
    int result = 0;
    if (nums[0] != 0) return 0;
    for (var i = 0; nums.length > i; i++) {
      if (nums[i] != i) {
        result = nums[i - 1] + 1;
        count++;
        break;
      }
    }
    if (count == 0) {
      result = nums.last + 1;
    }
    return result;
  }
}