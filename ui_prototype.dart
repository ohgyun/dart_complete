#import('dart:html');

void main() {
  new Textarea();
}

class Textarea {

  TextAreaElement textarea;
  Range range;
  
  Textarea() {
    textarea = document.query('#textarea');
    range = document.createRange();
    
    ready();
  }
  
  void ready() {
    textarea.on.keyUp.add((e) {
      num start = textarea.selectionStart;
      num end = textarea.selectionEnd;
      
      if (start == end) {
        num cutStart = end - 30;
        if (cutStart < 0) {
          cutStart = 0;
        }
        
        String target = textarea.value.substring(cutStart, end);
        
        RegExp exp = const RegExp(@'\w+$');
        String matched = exp.stringMatch(target);
        print(matched);
      }
    });
  }
  
}