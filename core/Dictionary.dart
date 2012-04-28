/**
 *  사전 종류 :
 *    1. 예약어 - Dart Language 사전 예약어 (interface, class, var...)
 *    2. 문서 - 실제 문서내 클래스명, 변수명 등.
 */
class Dictionary {
//  final preDefinedDic = 
//  [
//    "class",
//    "interface",
//    "const",
//    "bool",
//    "int",
//    "String"
//  ];
//  
  List _terms;
  
  Dictionary(List terms) {
    // terms를 정렬해서 집어넣자.
    if (terms == null) {
      this._terms = [];
    } else {
      this._terms = terms;
      this.sort();
    }
  }
                              
  
  /**
   * 문서 사전에 텀을 입력한다.
   */
  void insert(String term) {
    if (this._terms.indexOf(term) < 0) {
      this._terms.add(term);  
      this.sort();
    }
  }
  
  /**
   * 문서 사전에서 텀을 제거한다.
   */
  void remove(String term) {
    var index = this._terms.indexOf(term);
    if (index < 0) {
      this._terms.removeRange(index, 1);
      this.sort();
    }
  }
  
  /**
   * 전체 사전에서 매칭되는 텀들을 찾아 돌려준다.
   */
  List search(String term) {
    // 걍 쉽게 구현. 정렬은 왜 한거니 -_-
    return this._terms.filter( (t) => t.startsWith(term) );
  }
  
  /**
   * 내부 terms를 정한다.
   */
  void sort() {
    this._terms.sort((a,b) => a.compareTo(b));
  }
  
}
