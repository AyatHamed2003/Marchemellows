void main() {
  //create linked list : 1 -> 2 -> 3 -> null
  Node<int> third = Node(3);
  Node<int> second = Node(2)..next = third;
  Node<int> first = Node(1)..next = second;
  printInReverse(first);   //output will be : 3, 2, 1
}

//challenge 3 : Print a linked list in revrese
class Node<T> {
  T value;
  Node<T>? next;
  Node(this.value);
}

void printInReverse<T>(Node<T>? node) {
  if (node == null) return;
  // Recursive call to reach the end of the list
  printInReverse(node.next);

  // print node value after recursive call returns
  print(node.value);
}