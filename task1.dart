
class Words {
  final String _word =  "hello";

  Words();

  factory Words.a(String value){
    if(value.isEmpty){
      for(int i=0;i<value.length;i++){
        if(value.codeUnitAt(i)<97&&value.codeUnitAt(i)>122) {
          return throw CustomException.exception();
        }

      }

      return throw CustomException.exception();

    } else {
      return Words();
    }
  }

  @override
  String toString() {
    return 'Words{_word: $_word}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Words &&
          runtimeType == other.runtimeType &&
          _word == other._word;

  @override
  int get hashCode => _word.hashCode;

  Words copyWith () => Words();

  String reverseVowels(String value){
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    List<String> str = value.split('');
    List<String> currentVowels = str
        .where((element) => vowels.contains(element.toLowerCase()))
        .toList();
    int t = currentVowels.length - 1;
    for (int i = 0; i < str.length; i++) {
      if (vowels.contains(str[i].toLowerCase()) && t >= 0) {
        str[i] = currentVowels[t];
        t--;
      }
    }
    return str.join();
  }



}

///Custom exception
class CustomException extends FormatException{
  static exception() => "custom exception";
}







void main() {
  Words.a("aasdf");

  Words myWords = Words.a("hi");
  print(  myWords.reverseVowels("leetcode"));


}