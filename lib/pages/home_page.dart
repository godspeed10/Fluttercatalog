import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myflutter/models/catalog.dart';
import 'package:myflutter/widgets/drawer.dart';
import 'package:myflutter/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 20;

  final String name = "Pradeep";

  @override
  void initState() {
    super.initState();
    loadData();
  }

// decoding and encoding of json
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogjson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogjson);
    final productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList(); // mapped data is converetd to listitems
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null &&
                CatalogModel.items
                    .isNotEmpty) // if catalogmodels. items is not null and catqalog model.items is not empty return Listview or else return circular indicator
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
