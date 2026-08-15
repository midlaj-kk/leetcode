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
  int total = 0;
  bool isLeft = false;
  int sumOfLeftLeaves(TreeNode? root) {
    if (root?.left == null && root?.right == null) {
      if (isLeft) {
        total += root?.val ?? 0;
      }
    }
    if (root?.left != null) {
      isLeft = true;
      sumOfLeftLeaves(root!.left);
    }
    if (root?.right != null) {
      isLeft = false;
      sumOfLeftLeaves(root!.right);
    }

    return total;
  }
}

