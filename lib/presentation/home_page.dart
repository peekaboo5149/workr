import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
