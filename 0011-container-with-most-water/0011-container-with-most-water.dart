import 'dart:math';

class Solution {
    int maxArea(List<int> list) {
        int max = 0;

        int l = 0; int r = list.length - 1;

        while(l < r){
            int side = min(list[r], list[l]);
            int area = side * (r - l).abs();

            max = max > area ? max : area;
            if(list[l] < list[r]) l++;
            else r--;
        }
        return max;
    }
}