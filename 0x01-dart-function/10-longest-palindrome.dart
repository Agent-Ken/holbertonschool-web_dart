String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longestPal = "none";

  bool isPalindrome(String sub) {
    int left = 0;
    int right = sub.length - 1;

    while (left < right) {
      if (sub[left] != sub[right]) {
        return false;
      }
      left++;
      right--;
    }
    return true;
  }

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring)) {
        if (substring.length > longestPal.length) {
          longestPal = substring;
        }
      }
    }
  }

  return longestPal;
}
