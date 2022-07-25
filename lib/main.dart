import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Weather Forecast",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red.shade400,
          shadowColor: Colors.transparent,
        ),
        backgroundColor: Colors.red.shade400,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _searchBar(),
            _divider(),
            _locationName(),
            _divider(),
            _currentConditions(),
            _divider(),
            _currentConditionDetails(),
            _divider(),
            _sourceCopyright(),
            _divider(),
          ],
        ),
      ),
    );
  }

  Divider _divider() {
    return const Divider(
      color: Colors.transparent,
      height: 40.0,
    );
  }

  Column _locationName() {
    return Column(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Montereal, Quebec, CA",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Text(
          "Sunday, July 24, 2022",
          style: TextStyle(fontSize: 16, color: Colors.white54),
        )
      ],
    );
  }

  Row _searchBar() {
    return Row(
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 26.0, right: 16.0),
          child: Icon(
            Icons.search,
            color: Colors.white60,
          ),
        ),
        Text(
          "Enter City Name",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white60,
          ),
        )
      ],
    );
  }

  Row _currentConditions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 92.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            children: const <Widget>[
              Text(
                "14F",
                style: TextStyle(
                  fontSize: 76.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                "Light Snow",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Row _currentConditionDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const <Widget>[
        _detailedCondition(),
        _detailedCondition(),
        _detailedCondition()
      ],
    );
  }

  Row _sourceCopyright() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "7-day weather forecast".toUpperCase(),
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

class _detailedCondition extends StatelessWidget {
  const _detailedCondition({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Icon(
            Icons.sunny_snowing,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.0),
          child: Text(
            "5",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Text(
          "km/h",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),
        )
      ],
    );
  }
}
