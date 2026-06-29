/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
      ListNode sen = ListNode(0, head);
      ListNode pred = sen;

      while(head != null) {
          if (head.next != null && head.val == head.next?.val){
              while (head?.next != null && head?.val == head?.next?.val) {
                  head = head?.next;
              }
              pred.next = head?.next;
          } else {
              pred = pred.next!;
          }
          head = head?.next;
      }

      return sen.next;
  }
}