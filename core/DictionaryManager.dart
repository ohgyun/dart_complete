class DictionaryManager {
  List _dictionaries;
  
  DictionaryManager() {
    this._dictionaries = [];
    // 밖으로 빼자. 나중에.
    List preDefined = [
      "interface",
      "class",
      "var",
      "int",
      "flaot",
      "double",
      "AssertionError",
      "bool",
      "Clock",
      "Collection",
      "Comparable",
      "Completer",
      "Date",
      "double",
      "Duration",
      "Dynamic",
      "Expect",
      "FallThroughError",
      "Function",
      "Future",
      "Futures",
      "Hashable",
      "HashMap",
      "HashSet",
      "int",
      "Iterable",
      "Iterator",
      "LinkedHashMap",
      "List",
      "Map",
      "Match",
      "Math",
      "num",
      "Object",
      "Options",
      "Pattern",
      "Queue",
      "RegExp",
      "Set",
      "Stopwatch",
      "String",
      "StringBuffer",
      "Strings",
      "TimeZone",
      "TypeError",
      "void",
      "BadNumberFormatException",
      "ClosureArgumentMismatchException",
      "EmptyQueueException",
      "Exception",
      "ExpectException",
      "FutureAlreadyCompleteException",
      "FutureNotCompleteException",
      "IllegalAccessException",
      "IllegalArgumentException",
      "IllegalJSRegExpException",
      "IndexOutOfRangeException",
      "IntegerDivisionByZeroException",
      "NoMoreElementsException",
      "NoSuchMethodException",
      "NotImplementedException",
      "NullPointerException",
      "ObjectNotClosureException",
      "OutOfMemoryException",
      "StackOverflowException",
      "UnsupportedOperationException",
      "WrongArgumentCountException"
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
