#import('dart:html');
#source('../../core/Parser.dart');
#source('../../core/DictionaryManager.dart');
#source('../../core/DocumentManager.dart');
#source("../../core/Dictionary.dart");
#source("../../core/Api.dart");

class ParserTest {

  void run() {
    write("hello");
    var parseTestStr = "class Human { var name = \"human\";\n var age; }";
    var list = new Parser().parseLine(parseTestStr);
    for(var term in list) {
      write(term);
    }
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML += '<br />' + message;
  }
}

void main() {
  new ParserTest().run();
  var list = ['baa', 'abb', 'abc', 'aba'];
  var filtered = list.filter((t) => t.startsWith('b'));
  for(var i in filtered) {
    print(i);
  }
  
  print('****시작');
  var result = const Api().search('M');
  for(var i in result) {
    print(i);
  }
}
