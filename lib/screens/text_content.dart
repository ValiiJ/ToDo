import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextContentScreen extends StatefulWidget {
  const TextContentScreen({
    super.key,
  });

  @override
  State<TextContentScreen> createState() => _TextContentScreenState();
}

class _TextContentScreenState extends State<TextContentScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Opacity(
          opacity: 0.5,
          child: Text(
            'Welcome back ',
            style: GoogleFonts.poppins(
              color: Colors.black,
            ),
          ),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('Pershendetje!')],
      ),

      // SafeArea(
      //   child: GridView.count(
      //     mainAxisSpacing: 10,
      //     crossAxisSpacing: 20,
      //     crossAxisCount: 2,
      //     children: const <Widget>[
      //       Text('Pershendetje 1 '),
      //       Icon(Icons.abc),
      //       Text('Pershendetje 2'),
      //       Text('Pershendetje 3 '),
      //       Text('Pershendetje 4'),
      //       Text('Pershendetje 5 '),
      //       Text('Pershendetje 6'),
      //     ],
      //   ),
      // ),
    );
  }
}
