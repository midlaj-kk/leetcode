class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    int m = matrix.length;
    int n = matrix[0].length;
    int maxValue = m * n;
    List<int> result = List.filled(maxValue,0);
    int index = 0;
    int left = 0;
        int right = n-1;
        int top = 0;
        int bot = m-1;
    while(index < maxValue){
        for(int i = left; i<= right && index < maxValue; i++){
            result[index] = matrix[top][i];
            index++;
        }
        top++;
        for(int i = top; i<=bot && index < maxValue;i++){
            result[index] = matrix[i][right];
            index++;
        }
        right--;
        for(int i = right; i>=left && index < maxValue;i--){
            result[index] = matrix[bot][i];
            index++;
        }
        bot--;
        for(int i = bot; i >= top && index < maxValue;i--){
            result[index] = matrix[i][left];
            index++;
        }
        left++;
    }
    return result;
  }
}