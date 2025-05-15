void main() {
  reverseList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
}

//challenge 1 : Reverse a List using stack
void reverseList(List<int> list) {
  List<int> stack = [];
  for (int item in list) {
    stack.add(item); // push
  }
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}
