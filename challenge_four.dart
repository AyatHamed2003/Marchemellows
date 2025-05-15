// challenge 4 : Find the middle node of a linked list
// This solution uses two pointers : slow and fast
void main() {
  // Create linked list : 1 -> 2 -> 3 -> 4 -> 5
  Node<int> node5 = Node(5);
  Node<int> node4 = Node(4)..next = node5;
  Node<int> node3 = Node(3)..next = node4;
  Node<int> node2 = Node(2)..next = node3;
  Node<int> node1 = Node(1)..next = node2;
  print(findMiddleNode(node1)?.value);  // print 3 
}

class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value);
}

Node<T>? findMiddleNode<T>(Node<T>? head) {
  Node<T>? slow = head;
  Node<T>? fast = head;
  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }
  return slow; // This is the Middle node
}
