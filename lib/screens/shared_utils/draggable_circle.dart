import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:flutter/material.dart';

class DraggableCircle extends StatefulWidget {
  const DraggableCircle({super.key});

  @override
  State<DraggableCircle> createState() => _DraggableCircleState();
}

class _DraggableCircleState extends State<DraggableCircle> {
  double posX = 100;
  double posY = 100;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: posX,
          top: posY,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                posX += details.delta.dx;
                posY += details.delta.dy;
              });
            },
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CraftsColor.primaryColor,
              ),
              child: Icon(
                Icons.support_agent,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
