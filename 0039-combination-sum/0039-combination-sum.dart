class Solution {
  List<List<int>> combinationSum(List<int> candidates, int target) {
    var res = <List<int>>[];
    bt(0, [], target, res, candidates, 0);
    return res;
  }

  void bt(int idx, List<int> cur, int target, List<List<int>> res,List<int> candidates, int sum){
      if(idx>=candidates.length||sum>target){
          return;
      }

     if(sum==target){
          res.add(cur);
          return;
      }
      
      bt(idx, [...cur, candidates[idx]], target, res, candidates,sum+candidates[idx]);
      bt(idx+1, [...cur], target, res, candidates, sum);
  }
}