import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ArtistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 8.h,
            width: double.maxFinite,
            color: Colors.orange,
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
