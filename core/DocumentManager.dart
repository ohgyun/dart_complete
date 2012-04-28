class DocumentManager {
  List _lines;
  
  DocumentManager() {
    this._lines = [];
  }
  
  /**
   * 문서 셋에 한 라인을 추가한다.
   */
  void addLine(String line) {
    this._lines.add(line);
  }
  
  /**
   * 문서 셋을 지정한다.
   */
  void addDocument(String document) {
    this._lines = [];
    this._lines.addAll(document.split("\\n"));
  }
  
  /**
   * 해당 라인을 업데이트 한다.
   */
  void updateLine(int index, String line) {
    // TODO - 해당 인덱스가 없으면 Exception을 throw 하자.
    this._lines[index] = line;
  }
}
