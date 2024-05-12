import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.pink,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50)
            ),
          )
        ],
      ),
    );
  }
}
