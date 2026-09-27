class Solution {
  bool isInterleave(String s1, String s2, String s3) {
    int n = s1.length, m = s2.length;
    if (n + m != s3.length) return false;

    // dp[i][j] means: can s3[0..i+j-1] be formed using s1[0..i-1] and s2[0..j-1]?
    List<List<bool>> dp = List.generate(n + 1, (_) => List.filled(m + 1, false));

    dp[0][0] = true;

    for (int i = 0; i <= n; i++) {
      for (int j = 0; j <= m; j++) {
        if (i > 0 && dp[i - 1][j] && s1[i - 1] == s3[i + j - 1]) {
          dp[i][j] = true;
        }
        if (j > 0 && dp[i][j - 1] && s2[j - 1] == s3[i + j - 1]) {
          dp[i][j] = true;
        }
      }
    }

    return dp[n][m];
  }
}