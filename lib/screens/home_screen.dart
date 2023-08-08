import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/screens/empty_list_screen.dart';
import 'package:todo/screens/text_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
            style: GoogleFonts.poppins(
              color: Colors.black,
            ),
          ),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Notes',
                  style: GoogleFonts.palanquin(
                    fontSize: 42,
                  ),
                ),
                // const SizedBox(
                //   width: 30,
                // ),
                FloatingActionButton(
                  tooltip: 'Create an notes',
                  // shape: const RoundedRectangleBorder(
                  //     // side: BorderSide(width: 2, color: Colors.white),
                  //     // borderRadius: BorderRadius.all(
                  //     //   Radius.circular(
                  //     //     8,
                  //     //   ),
                  //     // ),
                  //     ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TextContentScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                // child: DropdownButton(items: const [
                //   DropdownMenuItem(
                //     // value: "#All",
                //     child: Text(
                //       '#All',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                //   DropdownMenuItem(
                //     // value: "#All",
                //     child: Text(
                //       '#All',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                //   DropdownMenuItem(
                //     // value: "#All",
                //     child: Text(
                //       '#Work',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                //   DropdownMenuItem(
                //     // value: "#All",
                //     child: Text(
                //       '#Personal',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                //   DropdownMenuItem(
                //     // value: "#All",
                //     child: Text(
                //       '#Fitness',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                //   DropdownMenuItem(
                //     // value: "#All",
                //     child: Text(
                //       '#Books',
                //       style: TextStyle(color: Colors.black),
                //     ),
                //   ),
                // ], onChanged: null),
                child: SizedBox(
                  width: 200,
                  child: DropdownSearch<String>(
                    popupProps: const PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    items: const [
                      "#All",
                      "#Work",
                      "#Personal",
                      "#Fitness",
                      "#Music",
                    ],
                    dropdownDecoratorProps: const DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "Select...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 15, 25, 15),
                child: const Row(
                  children: [
                    Icon(
                      Icons.list_alt,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.menu,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13,
          ),
          TabBar(
            isScrollable: true,
            controller: _controller,
            tabs: const <Widget>[
              Tab(
                child: Text(
                  '#All',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '#Work',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '#Presonal',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '#Fitness',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '#All',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const EmptyListScreen(),
        ],
      ),
    );
  }
}
