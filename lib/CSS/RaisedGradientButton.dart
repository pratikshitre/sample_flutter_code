import 'package:flutter/material.dart';
import 'textcss.dart';

class RaisedGradientButton extends StatelessWidget {
  
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
   
    @required this.child,
    this.gradient,
    this.width =20,
    this.height = 40.0,
    this.onPressed, Null Function() onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: queryData.size.width*0.8,
      height: setHeight(45.0),
      
      decoration: BoxDecoration(
        
        //border: new Border.all(color: Colors.white, width: 2.0),
      borderRadius: new BorderRadius.circular(30.0),
        gradient: gradient, 
      
      boxShadow: [
        
        BoxShadow(
          color: Colors.grey[500],
          offset: Offset(0.0, 3.0),
          blurRadius: setHeight(10),
        ),
        
      ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}