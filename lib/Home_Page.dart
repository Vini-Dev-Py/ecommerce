import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget image_slider_carousel = Container(
    height: 250,
    child: Carousel(
      boxFit: BoxFit.fill,
      images: [
        Image.network("https://images.unsplash.com/photo-1556228453-efd6c1ff04f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
        Image.network("https://images.unsplash.com/photo-1517502884422-41eaead166d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=625&q=80"),
        Image.network("https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80"),
        Image.network("https://images.unsplash.com/photo-1541558869434-2840d308329a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80"),
        Image.network("https://images.unsplash.com/photo-1520699049698-acd2fccb8cc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
        Image.network("https://images.unsplash.com/photo-1594235048794-fae8583a5af5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"),
        Image.network("https://images.unsplash.com/photo-1558274862-fb21bb917cd3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
      ],
      autoplay: true,
      indicatorBgPadding: 1.0,
      dotBgColor: const Color(0xffD10900),
      dotColor: const Color(0xffffffff),
      dotIncreasedColor: const Color(0xffffff00),
      dotSize: 4.0,
      showIndicator: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xffE8391A),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  image_slider_carousel,
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
