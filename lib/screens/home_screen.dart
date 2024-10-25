import 'package:flutter/material.dart';
import 'package:todo/screens/add_task_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddTaskScreen()));
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "TODO",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 243, 243),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.menu,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 243, 243),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(
                              Icons.menu,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 243, 243, 243),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search cards ...",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
