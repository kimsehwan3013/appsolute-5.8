import 'package:flutter/material.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Flexible(
              child: Container(
                color: Colors.blue,
              )
          ),
          Flexible(
              child: Container(
                color: Colors.red,
              )
          ),
          Flexible(
              child: Container(
                color: Colors.green,
              )
          ),
          Flexible(
              child: Container(
                color: Colors.yellow,
              )
          ),
        ],
      ),
    );
  }
}
