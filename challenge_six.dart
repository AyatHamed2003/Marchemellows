//challenge 6 : Remove all occurences of a specific element from a linked list
void main() {
  // create linked list : 1 -> 2 -> 3 -> 4 -> null
  Node<int> node4 = Node(4);
  Node<int> node3 = Node(3)..next = node4;
  Node<int> node2_1 = Node(2)..next = node3;
  Node<int> node1 = Node(1)..next = node2_1;
  node2_1.next = node2_1.next!..next = node4;

  // Remove all occurrences of 2 : 1 -> 2 -> 3
  Node<int>? modifiedList = removeOcurrences(node1, 3);
  Node<int>? current = modifiedList;

  // print the modified list
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value);
}

Node<T>? removeOcurrences<T>(Node<T>? head, T value) {
  while (head != null && head.value == value) {
    head = head.next; // skip the nodes that contain the value
  }
  Node<T>? current = head;
  while (current != null && current.next != null) {
    if (current.next!.value == value) {
      current.next =
          current.next!.next; // remove the node with the matching value
    } else {
      current = current.next!;
    }
  }
  return head; // return the modified list
}
