import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/pages/wishlist_selection.dart';
import 'package:provider_demo/providers/counter_provider.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "Counter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Counter Value is : ${value.counter}"),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    onPressed: () {
                      value.addFunc();
                    },
                    child: const Text(
                      "Add ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    onPressed: () {
                      value.removeFunc();
                    },
                    child: const Text(
                      "Remove",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FourthPage(),
              ),
            );
          },
          child: const Icon(
            Icons.next_plan_outlined,
          ),
        ),
      ),
    );
  }
}
