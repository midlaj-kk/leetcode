class Solution {
  int minimumTotal(List<List<int>> triangle) {
      for(int lvl = triangle.length-1; lvl > 0; lvl--){
          for (int i = 0; i<triangle[lvl].length-1; i++){
              triangle[lvl-1][i] += min(triangle[lvl][i],triangle[lvl][i+1]); 
          }
      }
      return triangle[0].first;   
  }
}