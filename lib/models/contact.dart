import 'package:flutter/material.dart';

class Contact {
  final String name;
  final ImageProvider<Object> image;
  final String lastMessage;
  final int numberOfMessages;
  final String lastViewed;
  late List<String> messages;

  Contact(
      {required this.name,
      required this.image,
      required this.lastMessage,
      required this.numberOfMessages,
      required this.lastViewed});

  @override
  String toString() {
    return 'Cotation{name: $name}';
  }

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) || other is Cotation && address == other.address;

  // @override
  // int get hashCode {
  //   int hashCode = 0;
  //   if (address != "") {
  //     hashCode = address.hashCode;
  //   }
  //   return hashCode;
  // }
}
