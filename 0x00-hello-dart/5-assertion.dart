void main(List<String> args) {
  final input = int.tryParse(args.first);
  // I use `.tryParse()` instead of `.parse()` to handle potential parsing errors more gracefully
  assert(input != null, 'Invalid input. Please provide a valid integer.');
  assert(input! >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}
