import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;

  ReusableCard({@required this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: this.child,
      ),
    );
  }
}
