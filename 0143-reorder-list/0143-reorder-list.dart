class Solution {
  void reorderList(ListNode? head) {
      ListNode? itr = head;
      List<ListNode?> vals = [];
      while(itr != null){
          vals.add(itr);
          itr = itr.next;
      }
      List<ListNode?> return_list = [];
      return_list.add(vals[0]);

      for(int i = 0 ; return_list.length < vals.length + 1; ++i){
        return_list.add(vals[i]);
        return_list.add(vals[vals.length - 1 - i]);
      }

      for(int i = 0 ; i < return_list.length - 1 ; ++i){
        return_list[i]?.next = return_list[i + 1];
      }
      if(vals.length % 2 == 1){
        return_list[return_list.length - 2]?.next = null;

      }
      else{
        return_list[return_list.length - 1]?.next = null;
      }

  }
}