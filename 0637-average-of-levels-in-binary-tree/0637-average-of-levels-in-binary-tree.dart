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
  List<double> averageOfLevels(TreeNode? root) {
    if (root == null) return [];
    final result = <double>[];
    final queue = Queue<TreeNode>();
    queue.add(root);

    while (queue.isNotEmpty) {
      final levelLength = queue.length;
      final subList = <int>[];

      for (int i = 0; i < levelLength; i++) {
        if (queue.first.left != null) queue.add(queue.first.left!);
        if (queue.first.right != null) queue.add(queue.first.right!);

        subList.add(queue.removeFirst().val);
      }
      final levelAvg = subList.fold(
              0.0, (previousValue, element) => previousValue + element) /
          subList.length;
      result.add(levelAvg);
    }
    return result;
  }
}