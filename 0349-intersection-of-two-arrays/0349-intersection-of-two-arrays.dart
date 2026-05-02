class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
      var set1 = nums1.toSet();
      var set2 = nums2.toSet();
      var result = set1.intersection(set2);
      return result.toList();
  }
}