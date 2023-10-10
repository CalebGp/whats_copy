import 'package:flutter/material.dart';
import 'package:whats_copy/models/contact.dart';

class ContactService {
  final List<Contact> _contacts = [];
  static final ContactService _instance = ContactService._();

  static ContactService get instance => _instance;

  ContactService._() {
    _mock();
  }

  factory ContactService() {
    return _instance;
  }

  void create(Contact contact) => _contacts.add(contact);

  void remove(Contact contact) => _contacts.remove(contact);

  Future<List<Contact>> fetch() async => _contacts;

  void _mock() {
    _contacts.add(Contact(
      name: "Caleb",
      image: const AssetImage("images/caleb.jpg"),
      lastMessage: "Eu sou gostoso",
      lastViewed: "Yesterday",
      numberOfMessages: 0,
    ));
    _contacts.add(Contact(
      name: "teste",
      image: const AssetImage("images/caleb.jpg"),
      lastMessage: "Eu sou gostoso",
      lastViewed: "Yesterday",
      numberOfMessages: 0,
    ));
  }
}
