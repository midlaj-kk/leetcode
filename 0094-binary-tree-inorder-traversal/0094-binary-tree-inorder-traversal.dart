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
  List<int> res = [];

  void inorder(TreeNode? root) {
    if (root == null) return;
    inorder(root.left);
    res.add(root.val);
    inorder(root.right);
  }

  List<int> inorderTraversal(TreeNode? root) {
    inorder(root);
    return res;
  }
}