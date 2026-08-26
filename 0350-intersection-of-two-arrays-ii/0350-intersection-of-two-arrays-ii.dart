class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    final Map<int,int> nums1Map = {};
  
    final List<int> intersection = [];
    for (var num in nums1){
        nums1Map[num] = (nums1Map[num] ?? 0) + 1 ;
    }
    for(var num in nums2){
        if (nums1Map.containsKey(num) && nums1Map[num]! > 0){
            intersection.add(num);
            nums1Map[num] = nums1Map[num]! - 1;
            if(nums1Map[num] == 0){
                nums1Map.remove(num);
            }
        }
    }
    return intersection;
  }
}