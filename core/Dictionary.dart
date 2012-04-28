/**
 *  사전 종류 :
 *    1. 예약어 - Dart Language 사전 예약어 (interface, class, var...)
 *    2. 문서 - 실제 문서내 클래스명, 변수명 등.
 */
class Dictionary {
  /**
   * 문서 사전에 텀을 입력한다.
   */
  bool insert(String term) {}
  
  /**
   * 문서 사전에서 텀을 제거한다.
   */
  bool remove(String term) {}
  
  /**
   * 전체 사전에서 매칭되는 텀들을 찾아 돌려준다.
   */
  List search(String term) {}
  
  
}
