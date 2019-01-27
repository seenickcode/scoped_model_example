import 'package:flutter/material.dart';
import '../models/location.dart';
import 'widgets/item_label.dart';

class LocationList extends StatefulWidget {
  @override
  LocationListState createState() => LocationListState();
}

class LocationListState extends State<LocationList> {
  List<Location> _locations = [];

  initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Locations'),
          actions: [IconButton(icon: Icon(Icons.refresh), onPressed: _refresh)],
        ),
        body: ListView(
          children:
              _locations.map((location) => ItemLabel(location.name)).toList(),
        ));
  }

  _refresh() {
    setState(() => _locations = Location.fetchAll());
  }
}
