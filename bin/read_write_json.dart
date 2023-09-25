import 'dart:convert';
import 'dart:io';


void main() async {
  final fileName = 'assets/publication.json';
  var publicFile = File('assets/publication.json');
  publicFile.readAsString().then((value) {
    var info = jsonDecode(value);
    print("Decode type is: ${info.runtimeType}");
    //   List<Info>
    List<Books> books =[];
    for(var map in info){
      // var books = Books(map['title'] , author:map['author'], title: '');
      var books = Books("Gobeshonr hathe khori", "Ragib Hasan", 300, title: 'Gobeshonr hathe khori',
      author:"Ragib Hasan" );
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



class Books {
  String? title;
  String? author;
  int? price;

  Books( this.title, this.author, this.price, {required title, required author});
  void show(){

  }
}






