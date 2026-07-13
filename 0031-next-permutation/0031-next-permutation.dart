class Solution {
  void nextPermutation(List<int> nums) {
   int k = 0;
    int firstValue = 0;
    int findIndexAtHighValue = 0;
    List<int> reverse = nums;
    for (int i = nums.length - 1; i > 0; i--) {
      if (nums[i] > nums[i - 1]) {
        k = i - 1;
        firstValue = nums[i - 1];
        break;
      }
      else{
        k=-1;
      }
    }

    if (k == -1) {
      int startFromK = 0;
      int lastPointer = nums.length - 1;
      while (startFromK < lastPointer) {
        int temp = nums[lastPointer];
        nums[lastPointer] = nums[startFromK];
        nums[startFromK] = temp;
        lastPointer--;
        startFromK++;
      }
    } else {
      for (int i = nums.length - 1; i > 0; i--) {
        if (firstValue < nums[i]) {
          findIndexAtHighValue = i;
          int temp = nums[findIndexAtHighValue];
          nums[findIndexAtHighValue] = nums[k];
          nums[k] = temp;
          break;
        }
      }

      int startFromK = k + 1;
      int lastPointer = nums.length - 1;

      while (startFromK < lastPointer) {
        int temp = nums[lastPointer];
        nums[lastPointer] = nums[startFromK];
        nums[startFromK] = temp;
        lastPointer--;
        startFromK++;
      }
    }


  } 
}