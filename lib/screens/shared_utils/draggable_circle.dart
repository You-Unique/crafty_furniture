import 'package:flutter/material.dart';

class DraggableCircle extends StatefulWidget {
  final double width;
  final double height;
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  final Gradient? gradient;
  final DecorationImage? image;
  final Widget? child;
  final double? posLeft;
  final double? posRight;
  final double? top;
  final double? down;

  const DraggableCircle({
    required this.width,
    required this.height,
    super.key,
    this.color,
    this.border,
    this.borderRadius,
    this.gradient,
    this.image,
    this.child,
    this.down,
    this.top,
    this.posLeft,
    this.posRight,
  });

  @override
  State<DraggableCircle> createState() => _DraggableCircleState();
}

class _DraggableCircleState extends State<DraggableCircle> {
  double posX = 10;
  double posY = 80;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: posX,
          bottom: posY,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                posX += details.delta.dx;
                posY += details.delta.dy;
              });
            },
            child: Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color,
                border: widget.border,
                borderRadius: widget.borderRadius,
                gradient: widget.gradient,
                image: widget.image,
              ),
              child: widget.child,
            ),
          ),
        ),
      ],
    );
  }
}
