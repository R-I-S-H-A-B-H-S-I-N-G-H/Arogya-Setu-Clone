import 'package:flutter/material.dart';






class heading extends StatelessWidget {
  String name;
  Color c;
  double width;
  heading(this.name, this.c, this.width);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.name,
      style: TextStyle(
        color:this.c,
        fontSize: width*.035,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.5,
      ),
     );
  }
}



class h1 extends StatelessWidget {
  String name;
  Color c;
  double width;
  h1(this.name, this.c, this.width);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.name,
      style: TextStyle(
        color: this.c,
        letterSpacing: -0.3,
        fontSize: width * .03,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}


class h2 extends StatelessWidget {
  String name;
  Color c;
  double width;
  h2(this.name, this.c, this.width);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.name,
      style: TextStyle(
        color: this.c,
        letterSpacing: -0.3,
        fontSize: width * .032,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class h3 extends StatelessWidget {
  String name;
  Color c;
  double width;
  h3(this.name, this.c, this.width);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Text(
        this.name,
        style: TextStyle(
          color: this.c,
          letterSpacing: -0.3,
          fontSize: width * .022,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
