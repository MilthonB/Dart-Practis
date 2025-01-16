bool isValid(String s) {
  Map<String, String> characteres = {
    '(':')',
    '{':'}',
    '[':']'
  };

  List<String> openCharacteres = [];

  for (var i = 0; i < s.length; i++) {
    if( characteres.containsKey(s[i]) ){
      openCharacteres.add(s[i]);
    }else{
      if( openCharacteres.isEmpty || characteres[openCharacteres.last] != s[i]) return false;
      openCharacteres.removeLast();
    }
  }

  return openCharacteres.isEmpty;

}

void main() {
  print(isValid("()"));         // true
  print(isValid("()[]{}"));     // true
  print(isValid("(]"));         // false
  print(isValid("([])"));       // true
}
