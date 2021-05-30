// import 'package:corona_app2/upperbar.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  double height = 0.0, width = 0.0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Arogya Setu",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Column(
          children: [
            box(double.infinity,15,Colors.black26),
            box(double.infinity,.1*height,Colors.white70),
            SizedBox(height: 10,),
            Flexible(
              child: ListView(
                children: [
                Stack(
                clipBehavior: Clip.none,
                children: [
                box(width,.2*height,Colors.deepPurple),
                Positioned(
                  top:.2*height/2.5,
                  left: width/14,
                  child: Container(
                  constraints: BoxConstraints(maxHeight: height,maxWidth: width-50),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
    

              ],
            )
                ],
              ))
            
            

          ],
        )
        
        );
  }
}



class box extends StatelessWidget {
  double w, h;
  Color c;
  box(this.w, this.h,this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.h,
      width: this.w,
      color: this.c,
    );
  }
}
