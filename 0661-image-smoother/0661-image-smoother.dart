class Solution {
  List<List<int>> imageSmoother(List<List<int>> img) {
    int rows = img.length;
    int cols = img[0].length;
    
    List<List<int>> result = List.generate(rows, (i) => List<int>.filled(cols, 0));

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        result[i][j] = getSmoothedValue(img, i, j, rows, cols);
      }
    }

    return result;
  }

  int getSmoothedValue(List<List<int>> img, int row, int col, int rows, int cols) {
    int sum = 0;
    int count = 0;

    for (int i = -1; i <= 1; i++) {
      for (int j = -1; j <= 1; j++) {
        int newRow = row + i;
        int newCol = col + j;

        if (isValidCell(newRow, newCol, rows, cols)) {
          sum += img[newRow][newCol];
          count++;
        }
      }
    }

    return sum ~/ count; // Use integer division to round down the average.
  }

  bool isValidCell(int row, int col, int rows, int cols) {
    return row >= 0 && row < rows && col >= 0 && col < cols;
  }
}