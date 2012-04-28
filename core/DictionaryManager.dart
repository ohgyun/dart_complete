class DictionaryManager {
  List _dictionaries;
  
  DictionaryManager() {
    this._dictionaries = [];
    // 밖으로 빼자. 나중에.
    List preDefined = [
      "class",
      "interface",
      "const",
      "bool",
      "int",
      "String"
    ];
    this._dictionaries.add(new Dictionary(preDefined));    
  }
  
  /**
   * 내부 사전들에서 해당 term을 찾는다.
   */
  List search(String term) {
    var result = [];
    for(var d in this._dictionaries) {
      result.addAll(d.search(term));
    }
    return result;
  }
}
