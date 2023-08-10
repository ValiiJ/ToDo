import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/wigets/text_field_wigets.dart';

class TextContentScreen extends StatefulWidget {
  const TextContentScreen({super.key});

  @override
  State<TextContentScreen> createState() => _TextContentScreenState();
}

class _TextContentScreenState extends State<TextContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,

        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        // leading: Avatar(
        //   margin: const EdgeInsets.only(top: 10, left: 10),
        //   sources: [
        //     GitHubSource(
        //       'luckyseven',
        //     ),
        //   ],
        // ),
        title: Opacity(
          opacity: 0.5,
          child: Text(
            'Welcome back ',
            style: GoogleFonts.poppins(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black54,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.black54,
            ),
          ),
        ],
      ),
      body: TextFielsWigets(),
    );
  }
}
