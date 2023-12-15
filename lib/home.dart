import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List data = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var uri = Uri.parse(
        "https://touristspot-be5ea-default-rtdb.asia-southeast1.firebasedatabase.app/.json");

    var response = await http.get(uri);
    var jsonData = jsonDecode(response.body);

    var spotsMap = jsonData as Map<String, dynamic>;

    // Get list from Map
    data = spotsMap["spot"] ?? [];

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: data.isNotEmpty
          ? CarouselSlider(
              items: buildCarouselItems(),
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true),
            )
          : Center(child: CircularProgressIndicator()),
    );
  }

  List<Widget> buildCarouselItems() {
    return data.map((item) {
      return Builder(
        builder: (BuildContext context) {
          return item != null ? buildCarouselCard(item) : Container();
        },
      );
    }).toList();
  }

  Widget buildCarouselCard(item) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => Dialog(
                child: Column(
                  children: [
                    Image.network(item['imageurl']),
                    Text(item['location']),
                    Text(item['address']),
                    Text(item['description']),
                  ],
                ),
              ),
            );
          },
          child: Image.network(
            item['imageurl'],
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black38,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                item['name'],
                style: TextStyle(color: Colors.white),
              ),
            ))
      ],
    );
  }
}
