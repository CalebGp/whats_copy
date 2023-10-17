import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_copy/screens/chats/chat.dart';

class ChatWidget extends StatelessWidget {
  final String name;
  final ImageProvider<Object> image;
  final String lastMessage;
  final int? numberOfMessages;
  final String lastViewed;
  const ChatWidget(
      {super.key,
      required this.name,
      required this.image,
      required this.lastMessage,
      this.numberOfMessages,
      required this.lastViewed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => ChatPage(
                avatar: image,
                name: name,
                status: "Online",
              ),
            ),
          );
        },
        child: Card(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 7,
                  ),
                  SizedBox(
                    width: 53,
                    height: 53,
                    child: ClipOval(
                      child: CircleAvatar(
                        backgroundImage: image,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        lastMessage,
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF889095),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    lastViewed,
                    style: GoogleFonts.roboto(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  numberOfMessages != 0
                      ? Container(
                          width: 22,
                          height: 22,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF036A01),
                            shape: OvalBorder(),
                          ),
                          child: Center(
                            child: Text(
                              '4',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 22,
                          height: 15,
                        )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
