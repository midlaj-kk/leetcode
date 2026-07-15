/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  int getMinimumDifference(TreeNode? root) {
    int max = 100000000;
    int? prev;

    void inorder(TreeNode? node) {
      if (node == null) return;
      inorder(node.left);

      if (prev != null) {
        int diff = node.val - prev!;
        if (diff < max) max = diff;
      }
      prev = node.val;

      inorder(node.right);
    }

    inorder(root);
    return max;
  }
}