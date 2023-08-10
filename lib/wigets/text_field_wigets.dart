import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFielsWigets extends StatelessWidget {
  TextFielsWigets({super.key});

  void showSnack(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Can\'t save empyt notes!'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  TextEditingController _notesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Expanded(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _notesController,
                      minLines: null,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: 'Write your notes here...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            showSnack(context);
                          },
                          child: const Text('Confirm'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
