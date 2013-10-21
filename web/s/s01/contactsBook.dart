part of contactsBook1;

List cont;

class Contact {
  String name;
  String email;
  String phone;
}

init() {
  var contact1 = new Contact();
  var contact2 = new Contact();
  var contact3 = new Contact();
  var contact4 = new Contact();
  
  contact1.name = "Thierry Bayi";
  contact1.phone = "4182557151";
  contact1.email = "thierrybayi@yahoo.fr";
  cont.add(contact1);
  
  contact2.name = "Christelle Janvier";
  contact2.phone = "41825571668";
  contact2.email = "christellejanvier@yahoo.fr";
  cont.add(contact2);
  
  
  contact3.name = "Moise Labege";
  contact3.phone = "4182865483";
  contact3.email = "moiselabege@yahoo.fr";
  cont.add(contact3);
  
}
