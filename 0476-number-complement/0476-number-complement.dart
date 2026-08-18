class Solution {
    int findComplement(int num) {
        List<String> bits = num.toRadixString(2).split('');
        for(int i=0;i<bits.length;i++) {
            if(bits[i] == '0') {
                bits[i] = '1';
            } else {
                bits[i] = '0';
            }
        }
        return int.parse(bits.join(), radix: 2);
    }
}