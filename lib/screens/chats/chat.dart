import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  final ImageProvider<Object>? avatar;
  final String? name;
  final String? status;
  const ChatPage({super.key, required this.avatar, this.name, this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(112),
            child: Container(
              width: double.infinity,
              height: 112,
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        height: 12.5,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 53,
                            width: 53,
                            child: ClipOval(
                              clipBehavior: Clip.hardEdge,
                              child: CircleAvatar(
                                backgroundImage: avatar,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name!,
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                status!,
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
