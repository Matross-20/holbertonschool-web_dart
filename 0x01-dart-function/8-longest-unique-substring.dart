String longestUniqueSubstring(String str) {
  Map<String, int> charsMap = {}; //  Define the character map
  int start = 0;
  int maxLength = 0;
  int cursor = 0;
  String longest = '';

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];

    //  If char was seen and is within the current window
    if (charsMap.containsKey(currentChar) && charsMap[currentChar]! >= cursor) {
      cursor = charsMap[currentChar]! + 1;
    }

    charsMap[currentChar] = i;

    int windowLength = i - cursor + 1;
    if (windowLength > maxLength) {
      maxLength = windowLength;
      longest = str.substring(cursor, i + 1);
    }
  }

  return longest;
}

void main() {
  print(longestUniqueSubstring("holbertonschool")); // Output: "tonsch"
}
