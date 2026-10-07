class Solution {
  List<List<int>> threeSum(List<int> nums) {
     nums.sort();
  List<List<int>> results = [];
  int n = nums.length;

  for (int i = 0; i < n - 2; i++) {
    // left and right pointers
    if (i > 0 && nums[i] == nums[i - 1]) {
      // skip duplicates
      continue;
    }
    int left = i + 1; // left pointer
    int right = n - 1; // right pointer

    while (left < right) {
      int sum = nums[i] + nums[left] + nums[right];// sum of three numbers

      if (sum == 0) {
        results.add([nums[i], nums[left], nums[right]]); 

        while (left < right && nums[left] == nums[left + 1]) {// skip duplicates of left pointer
          left++; // move left pointer to the right
        }
        while (left < right && nums[right] == nums[right - 1]) { // skip duplicates of right pointer
          right--;// move right pointer to the left
        }
        left++;// move left pointer to the right
        right--;// move right pointer to the left
      } else if (sum < 0) {
        left++;// move left pointer to the right
      } else {
        right--;// move right pointer to the left
      }
    }
  }

  return results;
  }
}