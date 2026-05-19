class Solution {
  int getCommon(List<int> nums1, List<int> nums2) {
    Set<int> s1 = Set.from(nums1);
    Set<int> s2 = Set.from(nums2);
    final intersect = s1.intersection(s2);
    return intersect.isEmpty ? -1 : intersect.first;
  }
}