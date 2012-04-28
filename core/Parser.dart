class Parser {
  /**
   * 문자열을 받아 파싱한 리스트로 돌려준다.
   *   class Human {
   *     var name;
   *   }
   *   => ['class', 'Human', '{', 'var', 'name', '}']
   */
  List parseLine(String line) {
    return line.split(new RegExp("[;\\s]+"));
  }
}
