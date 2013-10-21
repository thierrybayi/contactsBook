library contactsBook;

class Contact {
  String name;
  String email;
  String phone;

  Contact.fromJson(Map<String, Object> contactMap) {
    name = contactMap["name"];
    email = contactMap["email"];
    phone = contactMap["phone"];
  }

  Map<String, Object> toJson() {
    var contactMap = new Map<String, Object>();
    contactMap["name"] = name;
    contactMap["phone"] = phone;
    contactMap["email"] = email;
    return contactMap;
  }

  }

class Contacts {
  var contactlist = new List<Contact>();

  Iterator<Contact> get iterator => contactlist.iterator;
  bool get isEmpty => contactlist.isEmpty;

  List<Contact> get internalList => contactlist;
  set internalList(List<Contact> observableList) => contactlist = observableList;

  bool add(Contact newContact) {
    for (Contact contact in Contacts) {
      if (newContact.name == contact.name) return false;
    }
    contactlist.add(newContact);
    return true;
  }

  Contact find(String name) {
    for (Contact contact in contactlist) {
      if (contact.name == name) return contact;
    }
    return null;
  }

  bool remove(Contact contact) {
    return contactlist.remove(contact);
  }

}
