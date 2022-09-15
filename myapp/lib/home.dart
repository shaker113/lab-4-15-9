import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/burger.dart';
import 'package:myapp/hotdog.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lab 4 15/9"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyoXdpDo7RDM-nKWcLphrLleMkw02ib5oA3QJTSj4Ve3-ooxH9qjbH57h_26tIso9bwOc&usqp=CAU"),
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.purple.shade500,
                        Colors.pink.shade400,
                        Colors.orangeAccent.shade200,
                        Colors.orangeAccent.shade100
                      ],
                    ),
                  ),
                  child: Card(
                      shadowColor: Colors.purple,
                      elevation: 44,
                      margin: EdgeInsets.all(15),
                      child: Text(
                        "wellcome to my resturant",
                        style: TextStyle(fontSize: 44),
                      ),
                      color: Colors.white),
                ),
                Divider(
                  height: 150,
                  color: Colors.transparent,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, fixedSize: Size(150, 30)),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Burger();
                            },
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.food_bank),
                  label: Text(
                    "Burger",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Divider(
                  height: 15,
                  color: Colors.transparent,
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, fixedSize: Size(150, 30)),
                  onPressed: () {
                    setState(
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HotDog();
                            },
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.food_bank),
                  label: Text(
                    "HotDog",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
