import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          iconTheme: const IconThemeData(color: Colors.black54),
          systemOverlayStyle: SystemUiOverlayStyle.light,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _headerImage(),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                const Divider(),
                _temperature(),
                const Divider(),
                _temperatureForecast(),
                const Divider(),
                _footerRatings()
              ],
            ),
          ))
        ],
      ),
    );
  }

  Image _headerImage() {
    return const Image(
      image: NetworkImage(
          'https://avatars.mds.yandex.net/get-zen_doc/169683/pub_5b37d5317aa92600aa96d74f_5b37d57aa9112400ae6e63b9/scale_1200'),
      fit: BoxFit.cover,
    );
  }

  Column _weatherDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Text(
          "Tuesday - May 22",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          style: TextStyle(
            color: Colors.black54,
          ),
        )
      ],
    );
  }

  Row _temperature() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Icon(
              Icons.wb_sunny,
              color: Colors.yellow,
            ),
          ],
        ),
        const SizedBox(
          width: 16.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: const <Widget>[
                Text(
                  "15C Clear",
                  style: TextStyle(color: Colors.deepPurple),
                )
              ],
            ),
            Row(
              children: const <Widget>[
                Text(
                  "Province Quebec, Montreal",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ],
        )
      ],
    );
  }

  Wrap _temperatureForecast() {
    return Wrap(
      spacing: 10.0,
      children: List.generate(
        8,
        (index) {
          return Chip(
            label: Text(
              '${index + 20}C',
              style: const TextStyle(fontSize: 15.0),
            ),
            avatar: Icon(
              Icons.wb_cloudy,
              color: Colors.blue.shade300,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(color: Colors.grey),
            ),
            backgroundColor: Colors.grey.shade100,
          );
        },
      ),
    );
  }

  Row _footerRatings() {
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.black,
        ),
        Icon(
          Icons.star,
          size: 15.0,
          color: Colors.black,
        ),
      ],
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        const Text(
          "Info with openweathermap.org",
          style: TextStyle(fontSize: 15.0),
        ),
        stars,
      ],
    );
  }
}
