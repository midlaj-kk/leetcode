
class Solution {
  ListNode? removeElements(ListNode? head, int val) {
        if(head==null)return null ;
        if(head.next!=null)head.next = removeElements(head.next , val);
        if(head.val==val)head = head.next ;
        return head ;
  }
}