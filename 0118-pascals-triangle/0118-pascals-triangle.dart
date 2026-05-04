class Solution {
    List<List<int>> generate(int numRows) {
        List<List<int>> output = [];
        List<int> current=[];
        for(int i=0; i<numRows; i++) {
            if(i==0 && current.isEmpty) {
                current.add(1);
            } else {
                List<int> sub=[1];
                for(int j=1;j<current.length;j++) {
                    sub.add(current[j]+current[j-1]);
                }
                sub.add(1);
                current = sub;
                print(sub);
            }
            output.add(current);
        }
        return output;
    } 
}