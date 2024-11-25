import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/movie_provider.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 14.0),
            child: Text(
              "Display Demo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: value.fav.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(value.fav[index].toString()),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    overlayColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                onPressed: () {
                  value.removeFav(value.fav[index]);
                },
                child: const Text(
                  "Remove",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
