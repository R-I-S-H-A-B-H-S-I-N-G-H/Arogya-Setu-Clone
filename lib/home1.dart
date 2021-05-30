import 'package:corona_app2/home.dart';

import 'h123.dart';
import 'package:flutter/material.dart';

class home1 extends StatelessWidget {
  double width = 0;
  // List<Widget> l;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Arogya Setu",
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0,
        backgroundColor: Colors.white30,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            belowNavBar(width),
            toolbar(width),
            Bluebox(width),

            stack(width),

            // Container(
            //   height: 10,
            //   color: Colors.black12,
            // ),
            headingdetails(width),
            listview()
          ],
        ),
      ),
    );
  }
}

class Bluebox extends StatelessWidget {
  double width;
  Bluebox(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Covid-19 Cases Overview",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: width * .035,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Updated 15 hours, 43 minutes ago. 25 May '21",
              style: TextStyle(color: Colors.white, fontSize: width * .025),
            ),
          ],
        ),
      ),
      color: Color(0xff0155b7),
      width: width,
      height: width * .3,
    );
  }
}

class stack extends StatelessWidget {
  double width;
  stack(this.width);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: width,
          width: width,
          color: Color(0xFFf7f7f9),
        ),
        Positioned(bottom: width * .05, child: homeCard())
      ],
    );
  }
}

class belowNavBar extends StatelessWidget {
  double width;
  belowNavBar(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 2, top: 4),
        child: Text(
          "Stay home stay Safe",
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              wordSpacing: 1.5),
        ),
      ),
      height: 20,
      color: Color(0xFFebf5ff),
    );
  }
}

class headingdetails extends StatelessWidget {
  @override
  double width;
  headingdetails(this.width);
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width * .2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: h2("All State/UT Stats", Colors.black, width),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: width * .04, left: width * .1, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                h2("Active", Colors.red, width),
                h2("Recovered", Colors.green, width),
                h2("Decreased", Colors.black, width),
                h2("Confirmed", Colors.red, width)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class toolbar extends StatelessWidget {
  double width;
  toolbar(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * .15,
      width: width,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black38, offset: Offset(0, 2), blurRadius: 2)
      ]),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: width / 4,
            height: width * .15,
            child: IconButton(
              onPressed: () {
                print("Hello mf");
              },
              icon: Icon(
                Icons.health_and_safety_outlined,
                size: width * .24 * .4,
              ),
            ),
          ),
          Container(
            height: width * .15,
            width: width / 4,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.stacked_bar_chart_outlined,
                size: width * .24 * .4,
              ),
            ),
          ),
          Container(
            width: width / 4,
            height: width * .15,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.personal_injury_rounded,
                size: width * .24 * .4,
              ),
            ),
          ),
          Container(
            width: width / 4,
            height: width * .2,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help,
                size: width * .24 * .4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class listview extends StatelessWidget {
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 27,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: width * .04,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 3, bottom: 3),
                  child: Text(
                    "StateName",
                    style: TextStyle(
                        fontSize: width * .025, fontWeight: FontWeight.bold),
                  ),
                ),
                color: Color(0xFFebf5ff),
              ),
              Container(
                width: width,
                height: width * .08,
                color: Color(0xFFffffff),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: width * .01, left: width * .1, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          h1("10000", Colors.red, width),
                          h3("+100", Colors.red, width),
                        ],
                      ),
                      Column(
                        children: [
                          h1("10000", Colors.green, width),
                          h3("+99", Colors.green, width),
                        ],
                      ),
                      Column(
                        children: [
                          h1("11000", Colors.black, width),
                          h3("+100", Colors.black, width),
                        ],
                      ),
                      Column(
                        children: [
                          h1("10000000", Colors.red, width),
                          h3("+100", Colors.red, width),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class homeCard extends StatelessWidget {
  String statename = "Uttar Pradesh";
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: width * .1, right: width * .1, top: 0, bottom: 0),
      child: Container(
        width: .8 * width,
        height: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: heading(statename, Colors.black, width),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                startnames("Active", 1000020, 200, Colors.red),
                endNames("Recovered", 1000020, 199, Colors.green)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                startnames("Decreased", 1000020, 200, Colors.black),
                endNames("Confirmed", 1000020, 199, Colors.red),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              endIndent: 10,
              indent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: heading("Across India", Colors.black, width),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                startnames("Active", 1000020, 200, Colors.red),
                endNames("Recovered", 1000020, 199, Colors.green)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                startnames("Decreased", 1000020, 200, Colors.black),
                endNames("Confirmed", 1000020, 199, Colors.red),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xFFffffff),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 10, color: Colors.black26, offset: Offset(0, 10))
            ]),
      ),
    );
  }
}

class endNames extends StatelessWidget {
  double width = 0;
  String name;
  Color c;
  double cases, deltacase;
  endNames(this.name, this.cases, this.deltacase, this.c);
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          h1(this.name, Colors.black87, width),
          SizedBox(
            height: 5,
          ),
          h2(this.cases.toString(), this.c, width),
          h3("+" + this.deltacase.toString(), this.c, width)

          // text("100101"),
          // text("100")
        ],
      ),
    );
  }
}

class startnames extends StatelessWidget {
  double width = 0;
  String name;
  Color c;
  double cases, deltacase;
  startnames(this.name, this.cases, this.deltacase, this.c);
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: 15, right: width * .3),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h1(this.name, Colors.black87, width),
            SizedBox(
              height: 5,
            ),
            h2(this.cases.toString(), this.c, width),
            h3("+" + this.deltacase.toString(), this.c, width)

            // text("100101"),
            // text("100")
          ],
        ),
      ),
    );
  }
}

class box extends StatelessWidget {
  double w, h;
  Color c;
  box(this.w, this.h, this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      color: c,
      // constraints: ConstrainedBox(constraints),
    );
  }
}
