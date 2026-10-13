class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) return [];
    return _combine("", digits);
  }

  List<String> _combine(String prefix, String digits) {
    if (digits.isEmpty) return [prefix];

    String digit = digits[0];
    List<String> combinations = [];

    for (var letter in keyboard[digit]!.split('')) {
      combinations.addAll(_combine(prefix + letter, digits.substring(1)));
    }

    return combinations;
  }

  static const Map<String, String> keyboard = {
    "2": "abc",
    "3": "def",
    "4": "ghi",
    "5": "jkl",
    "6": "mno",
    "7": "pqrs",
    "8": "tuv",
    "9": "wxyz"
  };
}