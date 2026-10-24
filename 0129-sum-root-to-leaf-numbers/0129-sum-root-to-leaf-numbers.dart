/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */

 import 'dart:collection';


class Solution {
  int sumNumbers(TreeNode? root) {
    int sum = 0;
    Queue<TreeNode> queue = Queue();
    if(root!=null) queue.add(root);
    while(queue.isNotEmpty){
      TreeNode popped = queue.removeFirst();
      if(popped.left!=null) {
        popped.left!.val = (popped.val*10) + popped.left!.val;
        queue.add(popped.left!);
      };
      if(popped.right!=null) {
        popped.right!.val = (popped.val*10) + popped.right!.val;
        queue.add(popped.right!);
      }

      if(popped.left==null && popped.right==null){
        sum += popped.val;
      }

    }
    
    return sum;
  }
}