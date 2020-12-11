import 'package:cobacoba/services/location_service.dart';
import 'package:cobacoba/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'datamodels/user_location.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: missing_required_param
    return StreamProvider<UserLocation>(
      // ignore: deprecated_member_use
      builder: (context) => LocationService().locationStream,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeView(),
      ),
    );
  }
}