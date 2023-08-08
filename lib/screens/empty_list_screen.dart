import 'package:flutter/material.dart';

class EmptyListScreen extends StatelessWidget {
  const EmptyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 200, // Vendosni lartësinë e dëshiruar këtu

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Text(
              'Empty list notes!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
