import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        leadingWidth: 40,

        title: InkWell(
          onDoubleTap: () {
            // ignore: avoid_print
            print("Clicked");
          },
          child: const Text(
            'Custom AppBar ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        titleSpacing: 0,
        toolbarHeight: 60,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 10.00,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.dark_mode),
            tooltip: 'Dark Mode Icon',
            onPressed: () {
              final snackBar = SnackBar(
                content: const Text('Want to use dark mode'),
                action: SnackBarAction(
                  label: 'Save',
                  onPressed: () {},
                ),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ),
          //IconButton
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.purple,
                Colors.red,
              ],
              stops: [0.0, 0.3, .8],
            ),
          ),
        ), //<Widget>[]
      ),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.copyright,
                color: Colors.black54,
                size: 20,
              ),
              Text(
                'Pritom Saha',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
