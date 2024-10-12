void main(List<String> args) {
  if (args.isEmpty) {
    print('Please provide a number as an argument.');
    return;
  }
  final number = int.parse(args.first);
  if (number > 0)
    print('$number is positive');
  else if (number == 0)
    print('$number is zero');
  else
    print('$number is negative');
}
