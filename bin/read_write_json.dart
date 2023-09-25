import 'dart:convert';
import 'dart:io';


void main() async {
  final fileName = 'assets/publication.json';
  var publicFile = File('assets/publication.json');
  publicFile.readAsString().then((value) {
    var info = jsonDecode(value);
    print("Decode type is: ${info.runtimeType}");
    //   List<Info>
    List<Book> books =[];
    for(var map in info){
      var post = Books(title:map['title'], author:map['author']);
    }
    for (var p in info) {

      //   print("Title: ${p.title}");
      //   print("Body: ${p.body}");
      //
      p.show(); // Home work
      print("");

    }
  });
}






