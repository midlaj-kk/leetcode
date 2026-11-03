/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? rotateRight(ListNode? head, int k) {
     // length
    int length = 1;
    if(head==null){
      return head;
    }
    ListNode countNode = head!;
    while (countNode.next != null) {
      length++;
      countNode = countNode.next!;
    }
    k = k % length;
    int totalCut = length - k;
    if(k==0 || k == length){
      return head;
    }

    ListNode? newHead = ListNode(head.val);
    ListNode? temp = head;

    List a = [];
    List b = [];
    
    for (int i = 0; i < length; i++) {
      if (i < totalCut) {
        a.add(newHead!.val);
      } else {
        b.add(newHead!.val);
      }
      temp = temp!.next;
      newHead = temp;
    }

    ListNode? temp2;
    ListNode? temp3;

    for (int i = a.length - 1; i >= 0; i--) {
      final te = ListNode(a[i]);
      te.next = temp2;
      temp2 = te;
    }

    for (int i = b.length - 1; i >= 0; i--) {
      final te = ListNode(b[i]);
      te.next = temp3;
      temp3 = te;
    }


    ListNode li3 = temp3!;
    while (li3.next != null) {
      li3 = li3.next!;
    }

    li3.next = temp2;

    return temp3;
  }
}