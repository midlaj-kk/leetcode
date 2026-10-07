class Solution {
  int longestConsecutive(List<int> nums) {
  if(nums.isEmpty) {
    return 0;
  }
  nums.sort();
  int longestStreak = 1;
  int currentStreak = 1;

  for(int i = 1; i < nums.length; i++) {
      if(nums[i] == nums[i - 1] + 1) {
        currentStreak++;
      } else if(nums[i] != nums[i - 1]){
        currentStreak = 1;
      }

      if(currentStreak > longestStreak) {
        longestStreak = currentStreak;
      }
  }

  return longestStreak;
  }
}