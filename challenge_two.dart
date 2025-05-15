void main(){
   print(isBalanced("(())")); // balanced
  print(isBalanced("(()")); // not balanced
  print(isBalanced("() () (()")); // not balanced
}
//challenge 2 : Balance the Parantheses
bool isBalanced(String input) {
  List<String> stack =
      []; // create an empty stack to store openning parantheses
  for (var char in input.split('')) {
    if (char == '(') {
      stack.add(char); // push openning paranthesis to stack
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      } // closing paranthesis without a matching opening
      stack.removeLast(); // pop the last opening paranthesis
    }
  }
  return stack.isEmpty; // if stack is empty , parantheses are balanced
}