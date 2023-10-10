import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whats_copy/screens/chats.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 58,
            title: Text(
              'WhatsApp',
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.black,
              indicatorWeight: 2,
              labelStyle:
                  GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w700),
              tabs: const [
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const ChatsPage(),
              Container(),
              Container(),
            ],
          )),
    );
  }
}
