class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    int nums2Length = nums2.length;
    List<int>result = [];
    for(int i=0;i<nums1.length;i++){

        int nums2IndexNo = nums2.indexOf(nums1[i]);
        int resultLength = result.length;

        if(nums2IndexNo < nums2.length-1){
           
            for(int j=nums2IndexNo;j<nums2.length-1;j++){

               if( nums1[i] < nums2[j+1]){
                result.add(nums2[j+1]);
                break;
                }
            }
          
        }
          if(result.length==resultLength){
                result.add(-1);
            }

    }
    return result;
  }
}