class Solution {
  List<List<int>> permute(List<int> nums) {
    int len = nums.length;
    List<List<int>> result = [];

    void foo(int start, List<int> nums){
        if(start==len-1){
            result.add(nums.toList());
            return;
        }
        for(int i = start ; i <= len-1 ; i++){
            nums.swap(start, i);
            foo(start + 1, nums);
            nums.swap(start, i);
        }
    }
    foo(0, nums);
    return result;
  }
}

extension ListSwap<T> on List<T> {
  void swap(int i, int j) {
    T temp = this[i];
    this[i] = this[j];
    this[j] = temp;
  }
}