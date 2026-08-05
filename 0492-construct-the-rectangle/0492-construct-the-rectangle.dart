class Solution {
  List<int> constructRectangle(int area) {
    int width = 1;
    int length = area;

    for (int i = 2; i * i <= area; i++) {
      if (area % i == 0) {
        width = i;
        length = area ~/ i;
      }
    }

    return [length, width];
  }
}