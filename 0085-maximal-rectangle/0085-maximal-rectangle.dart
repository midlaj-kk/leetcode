class Solution {
  int maximalRectangle(List<List<String>> matrix) {
  if (matrix.isEmpty || matrix[0].isEmpty) return 0;

  int largestRectangleArea(List<int> heights) {
    List<int> stack = [];
    int maxArea = 0;
    heights.add(0);
    for (int i = 0; i < heights.length; i++) {
      while (stack.isNotEmpty && heights[i] < heights[stack.last]) {
        int height = heights[stack.removeLast()];
        int width = stack.isEmpty ? i : i - stack.last - 1;
        maxArea = maxArea > height * width ? maxArea : height * width;
      }
      stack.add(i);
    }
    return maxArea;
  }

  int maxArea = 0;
  List<int> heights = List.filled(matrix[0].length, 0);
  for (List<String> row in matrix) {
    heights = List.generate(matrix[0].length, (index) => row[index] == '1' ? heights[index] + 1 : 0);
    maxArea = maxArea > largestRectangleArea(heights) ? maxArea : largestRectangleArea(heights);
  }

  return maxArea;
}


}