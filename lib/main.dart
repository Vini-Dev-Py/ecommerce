import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: 'Ecommerce',
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final sizeConfig = MediaQuery.of(context).size.width;

    Widget Bottom_Navigation_Bar = Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.up,
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
                width: sizeConfig,
                height: 40.0,
                color: const Color(0xffD10900),
                child: Container(
                  width: sizeConfig,
                  height: 40.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: (MediaQuery.of(context).size.width / 9))),
                      SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.phone,
                                  color: Color(0xffffffff)),
                              onPressed: () {})),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.envelope,
                                  color: Color(0xffffffff)),
                              onPressed: () {})),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.globe,
                                  color: Color(0xffffffff)),
                              onPressed: () {})),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.instagram,
                                  color: Color(0xffffffff)),
                              onPressed: () {})),
                      Padding(padding: EdgeInsets.only(left: 30)),
                      SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.user,
                                  color: Color(0xffffffff)),
                              onPressed: () {})),
                    ],
                  ),
                )),
          )
        ],
      ),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Logo"),
          centerTitle: true,
          backgroundColor: const Color(0xffD10900),
          leading: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: FaIcon(FontAwesomeIcons.cartArrowDown, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text("#"),
                accountEmail: new Text("#"),
                decoration: BoxDecoration(
                  color: const Color(0xffE8391A),
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new NetworkImage(''),
                  backgroundColor: const Color(0xffFDFDFD),
                ),
              ),
              new ListTile(
                title: new Text("Lista de Tarefas"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new MyHomePage()));
                },
              ),
              new Divider(
                color: Colors.black,
                height: 5.0,
                thickness: 5,
                // indent: 20,
                // endIndent: 20,
              ),
              new ListTile(
                title: new Text("Fale conosco"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new MyHomePage()));
                },
              ),
              new Divider(
                color: Colors.black,
                height: 5.0,
                thickness: 5,
                // indent: 20,
                // endIndent: 20,
              ),
              new ListTile(
                title: new Text("Login"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new MyHomePage()));
                },
              ),
              new Divider(
                color: Colors.black,
                height: 5.0,
                thickness: 5,
                // indent: 20,
                // endIndent: 20,
              ),
              new ListTile(
                title: new Text("Desenhos"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new MyHomePage()));
                },
              ),
              new Divider(
                color: Colors.black,
                height: 5.0,
                thickness: 5,
                // indent: 20,
                // endIndent: 20,
              ),
              new ListTile(
                title: new Text("Sobre nós"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new MyHomePage()));
                },
              ),
              new Divider(
                color: Colors.black,
                height: 5.0,
                thickness: 5,
                // indent: 20,
                // endIndent: 20,
              ),
            ],
          ),
        ),
        body: Container(),
        bottomNavigationBar: Bottom_Navigation_Bar
    );
  }
}
