class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      int index = nums[i].abs() - 1;
      if (nums[index] > 0) {
        nums[index] = -nums[index];
      }
    }
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > 0) {
        result.add(i + 1);
      }
    }
    return result;
  }
}