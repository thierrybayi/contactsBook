part of contactsBook1;

Contacts cont = new Contacts();

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

class Contact extends ConceptEntity<Contact>{
  
  var iname, phone, email;
  String get name => iname;
  set name(String name) {
    iname = name;
    if (code == null) {
      code = name;
    }
  }

  Contact newEntity() => new Contact();

}


class Contacts extends ConceptEntities<Contact> {

  Contacts newEntities() => new Contacts();
  Contact newEntity() => new Contact();
  
}
add(MouseEvent event) {
  
  Contact contact = new Contact();
  InputElement name = query("#name");
  InputElement phone = query("#phone");
  InputElement email = query("#email");
  bool error = false;
  if (name.value.trim() == '' || phone.value.trim() == '') error = true;
  else{
    contact.name = name.value;
    contact.phone = phone.value;
    contact.email = email.value;
    cont.add(contact);
    
    display(); 
    }
}


update(MouseEvent event){
  var BtUp = (event.target as ButtonElement).title;
  var contact = cont.find(BtUp);
  InputElement name = query("#name");
  InputElement phone = query("#phone");
  InputElement email = query("#email");
  name.value = contact.name;
  phone.value = contact.phone;
  email.value = contact.email;
  cont.remove(contact);
}

empty(MouseEvent event){
  InputElement name = query("#name");
  InputElement phone = query("#phone");
  InputElement email = query("#email");
  name.value ="";
  phone.value ="";
  email.value ="";
}
clear(MouseEvent event) {
 var BtS = (event.target as ButtonElement).title;
 var contact = cont.find(BtS);
 cont.remove(contact);
 
 display(); 
}



save() {

}
