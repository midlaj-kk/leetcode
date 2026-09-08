class MyStack {
  List<int> _queue1 = []; // Main queue for managing stack elements
  List<int> _queue2 = []; // Temporary queue for swapping elements

  MyStack();

  /// Push element x to the top of the stack.
  void push(int x) {
    _queue1.add(x);
  }

  /// Removes the element on the top of the stack and returns it.
  int pop() {
    while (_queue1.length > 1) {
      // Move all elements except the last one from queue1 to queue2
      _queue2.add(_queue1.removeAt(0));
    }
    int topElement = _queue1.removeAt(0); // The last element is the "top" of the stack
    _queue1 = _queue2;
    _queue2 = [];
    return topElement;
  }

  /// Returns the element on the top of the stack.
  int top() {
    while (_queue1.length > 1) {
      // Move all elements except the last one from queue1 to queue2
      _queue2.add(_queue1.removeAt(0));
    }
    int topElement = _queue1.first; // Peek the last element
    _queue2.add(_queue1.removeAt(0)); // Move it to queue2
    // Swap the roles of the queues
    _queue1 = _queue2;
    _queue2 = [];
    return topElement;
  }

  /// Returns true if the stack is empty, false otherwise.
  bool empty() {
    return _queue1.isEmpty && _queue2.isEmpty;
  }
}