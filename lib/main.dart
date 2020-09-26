import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MaterialApp(
    title: 'Ecommerce',
    home: MyHomePage(),
  )
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Destaques"),
          centerTitle: true,
          backgroundColor: const Color(0xffD10900),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: FaIcon(FontAwesomeIcons.cartArrowDown, color: Colors.white),
              onPressed: () {},
            ),
          ],
        )
    );
  }
}
