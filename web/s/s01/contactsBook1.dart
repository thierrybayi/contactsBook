library contactsBook1;

import 'dart:html';

part 'contactsBook.dart';

String list;

display() {
  for (var contact in cont) {
    var contact1 = '''
      <a href="${contact.email}">
        ${contact.name} ${contact.phone}
      </a>''';
     list = '$list ${contact1}';
  }
  query('#contacts').innerHtml = list;
}

void main() {
  init();
  display();
}