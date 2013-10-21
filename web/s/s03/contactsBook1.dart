library contactsBook1;

import 'dart:html';
import 'package:dartlero/dartlero.dart';
part 'contactsBook.dart';

display() {
  String list = '''<table border=1>
      <tr>
      <th> Nom et Prénoms </th>
      <th> Téléphone </th>
      <th> Courriel </th>
      <th> Description </th>
      <th> Modifier </th>
      <th> Supprimer </th>
      </tr>
      ''';
  for (var contact in cont) {
    var a="_"+contact.name.replaceAll(" ", "");
    var a1= contact.name.replaceAll(" ", "");
    var contact1 = '''
<tr>
    <td> ${contact.name}</td>
    <td> ${contact.phone} </td> 
    <td class="mail"> ${contact.email} </td>
    <td class="modif"> <button id="${a}" title="${contact.name}">update</button>  </td>
    <td class="suppr"> <button id="${a1}" title="${contact.name}">clear</button> </td>
 
</tr>
''';
    list = '$list ${contact1}';
  }
  
  var contact1 = '''</table>''';
  
  query('#contactsBook').innerHtml = list;
  list = '$list ${contact1}';
  for (var contact in cont) {
    var  clean = "#_"+contact.name.replaceAll(" ", "");
    var  upd = "#"+contact.name.replaceAll(" ", "");
    query('#clean').onClick.listen(clear);
    query('#upd').onClick.listen(update);

}

void main() {
  init();
  display();
  query('#add').onClick.listen(add);
  query('#cancel').onClick.listen(empty);
}

}