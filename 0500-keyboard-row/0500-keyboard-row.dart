class Solution {
    List<String> findWords(List<String> words) {
        List<Set<String>> rows_element = [
            {"q", "w", "e", "r", "t", "y", "u", "i", "o", "p"},
            {"a", "s", "d", "f", "g", "h", "j", "k", "l"}, 
            {"z", "x", "c", "v", "b", "n", "m"},
        ];
        List<String> result_words = [];
        for(int i=0; i<rows_element.length; i++){
            for(var word in words) {
                var res = word.toLowerCase().split("").toSet();
                if(rows_element[i].containsAll(res)) result_words.add(word);
            }
        }
        return result_words;
    }
}