/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
      final values = <int>[];
      while (head != null) {
          values.add(head.val);
          head = head.next;
      }

      return values.join('') == values.reversed.join('');
  }
}