import 'package:flutter/material.dart';
import 'package:whats_copy/components/chat_widget.dart';
import 'package:whats_copy/models/contact.dart';
import 'package:whats_copy/service/chat.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final service = ContactService.instance;
    List contacts = [];
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder<List<Contact>>(
        future: service.fetch(),
        builder: (context, snapshot) {
          debugPrint("entrou no builder \n ${snapshot.toString()}");

          if (snapshot.hasData) {
            contacts = snapshot.data!;
            return ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (BuildContext context, int index) {
                Contact contact = contacts[index];
                return ChatWidget(
                  name: contact.name,
                  image: contact.image,
                  lastMessage: contact.lastMessage,
                  lastViewed: contact.lastViewed,
                  numberOfMessages: contact.numberOfMessages,
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Erro ao carregar lista de portões"),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

      // body: Column(
      //   children: [
      //     ChatWidget(
      //       name: "Caleb",
      //       image: AssetImage("images/caleb.jpg"),
      //       lastMessage: "Eu sou gostoso",
      //       lastViewed: "Yesterday",
      //     ),
      //   ],
      // ),
    );
  }
}
