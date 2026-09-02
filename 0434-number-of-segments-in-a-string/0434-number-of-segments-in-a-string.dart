class Solution {
    int countSegments(String s) {
        if(s.isEmpty || s == ' ') return 0;
        if(s.length == 1) return 1;
        int count = 0;
        bool char = false;
        for(int i=0;i<s.length-1;i++) {
            if(char && s[i] == ' ' && s[i+1] != ' ') {
                count++;
            } else if(s[i] != ' ') {
                if(!char) count++;
                char = true;
            }
        }
        return count;
    }
}