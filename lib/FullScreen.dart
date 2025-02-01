import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fullscreen extends StatefulWidget {
  final String imageurl;
  const Fullscreen({super.key, required this.imageurl});

  @override
  State<Fullscreen> createState() => _FullscreenState();
}

class _FullscreenState extends State<Fullscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(widget.imageurl,fit: BoxFit.cover,),
    );
  }
}
