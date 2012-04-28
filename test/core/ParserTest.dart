#import('dart:html');
#source('../../core/Parser.dart');

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
}
