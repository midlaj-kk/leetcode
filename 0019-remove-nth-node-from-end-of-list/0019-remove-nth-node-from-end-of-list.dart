/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    ListNode? current=head, diff=head, prev;
    int c=-1;
    while(current!=null){
        c++;
        if(c>=n){
            prev = diff;
            diff=diff?.next;
        }
        current=current.next;
    }
    if(prev==null&&c!=0)return diff?.next;
    prev?.next=diff?.next;
    return c==0?prev:head;
  }
}