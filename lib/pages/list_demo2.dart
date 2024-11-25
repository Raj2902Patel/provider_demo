import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/providers/list_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListModel>(
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
        body: Column(
          children: [
            Text(
              value.numbers.last.toString(),
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.numbers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      value.numbers[index].toString(),
                      style: const TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 24.0,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            value.add();
          },
          child: const Icon(CupertinoIcons.add),
        ),
      ),
    );
  }
}
