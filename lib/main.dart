import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

// Pages
import 'Home_Page.dart';
import 'Destaques.dart';
import 'Premium.dart';
import 'Eventos.dart';
import 'Categorias.dart';

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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController tabController;

  AnimationController _controller;

  static const List<IconData> icons = const [
    FontAwesomeIcons.facebookMessenger
  ];
  static const List<IconData> icons_whatsapp = const [
    FontAwesomeIcons.whatsapp
  ];
  static const List<IconData> icons_youtube = const [FontAwesomeIcons.youtube];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 5, vsync: this, initialIndex: 2);

    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  // Funções !!!

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
                              icon: FaIcon(FontAwesomeIcons.robot,
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
          leading: IconButton(
              icon: FaIcon(FontAwesomeIcons.user, color: Colors.white),
              onPressed: () {}),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              icon: FaIcon(FontAwesomeIcons.cartArrowDown, color: Colors.white),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              controller: tabController,
              indicatorWeight: 3,
              indicatorColor: const Color(0xffffffff),
              tabs: <Widget>[
                FaIcon(FontAwesomeIcons.star, color: Color(0xffffffff)),
                FaIcon(FontAwesomeIcons.calendarAlt, color: Color(0xffffffff)),
                FaIcon(FontAwesomeIcons.home, color: Color(0xffffffff)),
                FaIcon(FontAwesomeIcons.gem, color: Color(0xffffffff)),
                FaIcon(FontAwesomeIcons.listUl, color: Color(0xffffffff)),
              ]),
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
                title: new Text("Categorias"),
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
                title: new Text("Categoria 1"),
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
                title: new Text("Categoria 2"),
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
                title: new Text("Categoria 3"),
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
                title: new Text("Categoria 4"),
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
                title: new Text("Categoria 5"),
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
                title: new Text("Categoria 6"),
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
                title: new Text("Categoria 7"),
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
                title: new Text("Categoria 8"),
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
                title: new Text("Categoria 9"),
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
                title: new Text("Categoria 10"),
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
        body: TabBarView(controller: tabController, children: <Widget>[
          Destaques(),
          Eventos(),
          HomePage(),
          Premium(),
          Categorias()
        ]),
        bottomNavigationBar: Bottom_Navigation_Bar,
        floatingActionButton: new Column(
          mainAxisSize: MainAxisSize.min,
          children: new List.generate(icons.length, (int index) {
            Widget child = new Container(
              height: 220.0,
              width: 60.0,
              alignment: FractionalOffset.topCenter,
              child: new ScaleTransition(
                  scale: new CurvedAnimation(
                    parent: _controller,
                    curve: new Interval(0.0, 1.0 - index / icons.length / 2.0,
                        curve: Curves.easeOut),
                  ),
                  child: Column(
                    children: <Widget>[
                      new FloatingActionButton(
                        heroTag: null,
                        backgroundColor: const Color(0xffD10900),
                        mini: false,
                        child: new Icon(icons[index],
                            color: const Color(0xffffffff)),
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      new FloatingActionButton(
                        heroTag: null,
                        backgroundColor: const Color(0xffD10900),
                        mini: false,
                        child: new Icon(icons_whatsapp[index],
                            color: const Color(0xffffffff)),
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      new FloatingActionButton(
                        heroTag: null,
                        backgroundColor: const Color(0xffD10900),
                        mini: false,
                        child: new Icon(icons_youtube[index],
                            color: const Color(0xffffffff)),
                        onPressed: () {},
                      ),
                    ],
                  )),
            );
            return child;
          }).toList()
            ..add(
              new FloatingActionButton(
                backgroundColor: const Color(0xffD10900),
                heroTag: null,
                child: new AnimatedBuilder(
                  animation: _controller,
                  builder: (BuildContext context, Widget child) {
                    return new Transform(
                      transform: new Matrix4.rotationZ(
                          _controller.value * 0.5 * math.pi),
                      alignment: FractionalOffset.center,
                      child: new Icon(_controller.isDismissed
                          ? FontAwesomeIcons.users
                          : Icons.close,),
                    );
                  },
                ),
                onPressed: () {
                  if (_controller.isDismissed) {
                    _controller.forward();
                  } else {
                    _controller.reverse();
                  }
                },
              ),
            ),
        ));
  }
}
