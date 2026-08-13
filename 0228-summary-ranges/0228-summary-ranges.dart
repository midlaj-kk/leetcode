class Solution {
  List<String> summaryRanges(List<int> nums) {
    if(nums.isEmpty)return [];
    List<String> a = [];
    int start=nums[0],end=nums[0];
    for(int i=1;i<nums.length;i++){
        if(nums[i] != end && nums[i] != end+1){
            a.add(helper(start,end));
            start=nums[i];
        }
            end=nums[i];
    }
    a.add(helper(start, end));
    return a;
  }
  String helper(int start, int end){
    if(start==end)return "$start";
    return "$start->$end";
  }
}