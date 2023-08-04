import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hawk_fab_menu/hawk_fab_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Avatar(
          margin: const EdgeInsets.only(top: 10, left: 10),
          textStyle: const TextStyle(fontSize: 40),
          sources: [
            GitHubSource(
              'luckyseven',
            ),
          ],
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
                const FloatingActionButton(
                  onPressed: null,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          DropdownSearch<String>(
            popupProps: const PopupProps.menu(
              showSelectedItems: true,
            ),
            items: const [
              "Private",
              "Public",
              "Movies",
              "Gaming",
              "Music",
            ],
            dropdownDecoratorProps: const DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                labelText: "List of ",
                hintText: "Secelt items",
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
          const TabBarView(
              // controller: ,
              children: [
                Center(
                  child: Text('#All'),
                )
              ]),
        ],
      ),
    );
  }
}
