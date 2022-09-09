import 'package:practice/leets/task.dart';

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  printNodes() {
    print(val);
    if (next != null) {
      next?.printNodes();
    }
  }
}

class Task203 extends Task {
  @override
  execute() {
    final initial = ListNode(1, ListNode(1, ListNode(1)));
    initial.printNodes();
    print("---");
    final result = removeElements(initial, 1);
    result?.printNodes();
  }

  ListNode? removeElements(ListNode? head, int val) {
    ListNode? newHead;
    ListNode? currentHead = head;
    ListNode? currentNewHead = newHead;

    while (currentHead != null) {
      final currentVal = currentHead.val;
      currentHead = currentHead.next;

      if (currentVal != val) {
        if (newHead == null) {
          newHead = ListNode(currentVal);
          currentNewHead = newHead;
        } else {
          currentNewHead?.next = ListNode(currentVal);
          currentNewHead = currentNewHead?.next;
        }
      }
    }

    return newHead;
  }
}
