import 'package:flutter/material.dart';
import 'package:myapp/home.dart';

class HotDog extends StatefulWidget {
  const HotDog({super.key});

  @override
  State<HotDog> createState() => _HotDogState();
}

class _HotDogState extends State<HotDog> {
  List h1 = ["Ketchup", "mayo", "mustard", "chips", "tomato", "corn"];
  List hv1 = <bool>[false, false, false, false, false, false];
  List f1 = ["French fries", "wedge fries", "curly fries"];
  List f2 = ["f1", "f2", "f3"];
  List f3 = [
    "https://th.bing.com/th/id/R.b07118ae30abd82838ecec13dab745f8?rik=xXLoaKSImcjt1A&riu=http%3a%2f%2f1.bp.blogspot.com%2f-hA0jswPUXN4%2fTnDdUUbHynI%2fAAAAAAAABDs%2fD6bSTVS0dXg%2fs1600%2fFrench-Fries%2b3.jpg&ehk=dEuvK4C7oC4VDpEjKSXEqZea9PD2jWdxqAQCgR88q2Y%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/R.72ee6c169927d7344896f4b1ef8c3137?rik=e3v3PsWw6QZ%2b4w&riu=http%3a%2f%2fc769e7f8e3c871bf7f84-3c4f8e07d4ab2f5f48a61d1d9b0d1b8c.r44.cf2.rackcdn.com%2f20160628010500-8955c7d5.jpg&ehk=OZWH5FCyIHGOzCQhBMbWnga5AKaccvPYl%2bsD8Hy6m2k%3d&risl=&pid=ImgRaw&r=0",
    "https://th.bing.com/th/id/OIP.y-4UY4xlIyC5V7O-S1SvQAHaEv?pid=ImgDet&rs=1"
  ];

  List d1 = ["pepsi", "seven up", "Water"];
  List d2 = ["d1", "d2", "d3"];
  List d3 = [
    "https://sc04.alicdn.com/kf/U1923699010ab4cecba060f4765c9ee56p.jpg",
    "https://cdnprod.mafretailproxy.com/sys-master-root/haa/h71/9486623309854/24395_main.jpg_480Wx480H",
    "https://pngimg.com/uploads/water_bottle/water_bottle_PNG98959.png"
  ];
  bool t1 = false;

  bool t2 = false;
  String g1 = "";

  String g2 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lab 4 15/9"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/hot-dog-isolated-icon-on-white-background-vector-id1271679742?k=20&m=1271679742&s=612x612&w=0&h=MVPdKmEZ61aU2tQzdeQ5fO_BYWfoQEzF0_51XGrnZv4="))),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 80, right: 80, top: 40, bottom: 30),
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red, Colors.white],
                ),
              ),
              child: Text(
                " Hot Dog Menu ",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Please chose your Hot Dog components",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Divider(
              height: 15,
              thickness: 5,
              color: Colors.black,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: h1.length,
              itemBuilder: (BuildContext context, int index) {
                return CheckboxListTile(
                  title: Text("${h1[index]}"),
                  value: hv1[index],
                  onChanged: ((value) {
                    setState(
                      () {
                        hv1[index] = value!;
                      },
                    );
                  }),
                );
              },
            ),
            Divider(
              height: 30,
              thickness: 5,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                " Please chose your Fries ",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return RadioListTile(
                  title: Text("${f1[index]}"),
                  secondary: Image(
                    width: 70,
                    fit: BoxFit.fill,
                    image: NetworkImage("${f3[index]}"),
                  ),
                  value: "${f2[index]}",
                  groupValue: g1,
                  onChanged: ((value) {
                    setState(
                      () {
                        g1 = value.toString();
                      },
                    );
                  }),
                );
              },
            ),
            Divider(
              height: 30,
              thickness: 5,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                " Please chose your Drink ",
                style: TextStyle(fontSize: 25),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return RadioListTile(
                  title: Text("${d1[index]}"),
                  secondary: Image(
                    image: NetworkImage("${d3[index]}"),
                  ),
                  value: "${d2[index]}",
                  groupValue: g2,
                  onChanged: ((value) {
                    setState(
                      () {
                        g2 = value.toString();
                      },
                    );
                  }),
                );
              },
            ),
            CheckboxListTile(
              title: Text("Diet Drink"),
              value: t2,
              onChanged: (value) {
                setState(() {
                  t2 = value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return home();
                      },
                    ),
                  );
                });
              },
              child: Text("Done?"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade500),
            )
          ],
        ),
      ),
    );
  }
}
