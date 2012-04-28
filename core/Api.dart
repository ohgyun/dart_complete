class Api {
  final DictionaryManager _dicManager;
  final DocumentManager _docManager;
  
  const Api() : 
      _dicManager = new DictionaryManager(),
      _docManager = new DocumentManager();
  /**
   * 넘어온 term에 해당하는 term list를 리턴한다.
   */
  List search(String term) {
    return this._dicManager.search(term);
  }
  
  void updateDocument(String document) {
    this._docManager.updateDocument(document);
  }
}
