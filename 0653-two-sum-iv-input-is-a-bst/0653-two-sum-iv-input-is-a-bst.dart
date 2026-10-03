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
  bool findTarget(TreeNode? root, int k) {
    List<int> arr = [];
    void inOrderTraversal(TreeNode? tree) {
      if (tree?.left != null) inOrderTraversal(tree?.left);
      arr.add(tree?.val ?? 0);
      if (tree?.right != null) inOrderTraversal(tree?.right);
    }
    inOrderTraversal(root);
    if (arr.length == 1 && !arr.contains(k)) return false;
    int l = 0, r = arr.length - 1;
    while (arr[l] != arr[r]) {
      int n = arr[l] + arr[r];
      if (n == k) return true;
      if (n < k) {
        l++;
      } else {
        r--;
      }
    }
    return false;
  }
}