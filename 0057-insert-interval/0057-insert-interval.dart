class Solution {
  List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
      //initiate variables
      List<List<int>> result = [];
      int currentStart = newInterval[0];
      int currentEnd = newInterval[1];
      //for each interval
      for(final interval in intervals) {
          //if the currentEnd is less than the start of the interval
          if(currentEnd < interval[0]) {
            // we want to append it before
              result.add([currentStart, currentEnd]);
            //then we make the interval our current range
              currentStart = interval[0];
              currentEnd = interval[1];
        //if the currentStart is greater than the end of the interval
          } else if (currentStart > interval[1]) {
              //we know the current range we have is greater so we
            //append the interval and keep looking for placement
              result.add([interval[0], interval[1]]);
          } else {
            //otherwise we know the stored ranges and the interval overlap
            //we find the new currentStart and currentEnd
              currentStart = min(currentStart, interval[0]);
              currentEnd = max(currentEnd, interval[1]);
          }
      }

    // there will always be a remaining range and so we append it
      result.add([currentStart, currentEnd]);

      return result;
  }
}