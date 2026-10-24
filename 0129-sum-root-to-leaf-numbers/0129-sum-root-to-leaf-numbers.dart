/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
/**
 * Definition for a binary tree node.
 */


class Solution {
  int sumNumbers(TreeNode? root) {
 
    if (root == null) {
      return 0;
    }
   
    return sumPathNumbers(root, 0);
  }

  int sumPathNumbers(TreeNode node, int currentSum) {
  
    int newSum = currentSum * 10 + node.val;
 
    if (node.left == null && node.right == null) {
      return newSum;
    }
    int sum = 0;
    if (node.left != null) {
      sum += sumPathNumbers(node.left!, newSum);
    }
    if (node.right != null) {
      sum += sumPathNumbers(node.right!, newSum);
    }
    return sum;
  }
}