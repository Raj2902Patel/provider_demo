import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/pages/wishlist_display.dart';
import 'package:provider_demo/providers/movie_provider.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MovieModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 14.0),
            child: Text(
              "Provider Demo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, index) {
            var data = "Movie Name is ${index + 1}";
            return ListTile(
              title: Text(data),
              trailing: GestureDetector(
                onTap: () {
                  if (!value.fav.contains(data)) {
                    value.addFav(data);
                  } else {
                    value.removeFav(data);
                  }
                },
                child: Icon(
                  Icons.favorite,
                  color: value.fav.contains(data) ? Colors.red : Colors.grey,
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DisplayPage(),
              ),
            );
          },
          child: const Icon(Icons.display_settings),
        ),
      ),
    );
  }
}
