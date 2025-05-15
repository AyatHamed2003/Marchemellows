//challenge 5 : Reverse a linked list by changing the direction of the links between the nodes
void main() {
// create linked list : 1 -> 2 > 3 -> 4 -> null
  Node<int> node4 = Node(4);
  Node<int> node3 = Node(3)..next = node4;
  Node<int> node2 = Node(2)..next = node3;
  Node<int> node1 = Node(1)..next = node2;
  // Reversed the list  : 4 -> 3 -> 2 -> 1
  Node<int>? reversed = reverseList(node1);
  Node<int>? current = reversed;
  // print reversed list
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

Node<T>? reverseList<T>(Node<T>? head) {
  Node<T>? previos = null;
  Node<T>? current = head;
  while (current != null) {
    Node<T>? nextNode = current.next; // save the next node
    current.next = previos; // reverse the link
    previos = current; // move the current pointer to the next node
    current = nextNode;
  }
  return previos; //New head of the reversed list
}
