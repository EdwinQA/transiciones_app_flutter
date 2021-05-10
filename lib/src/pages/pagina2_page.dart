import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(

        title: Center(child: Text('Segunda pagina')),
      ),
      body: Center(
        child: Text('Pagina 2'),
      ),
    );
  }
}
