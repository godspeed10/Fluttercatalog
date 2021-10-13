import 'package:flutter/material.dart';
import 'package:myflutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 20;
  final String name = "Pradeep";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Wall $days by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
