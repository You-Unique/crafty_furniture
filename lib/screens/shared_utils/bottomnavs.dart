import 'package:flutter/material.dart';

class Bottomnavs extends StatefulWidget {
  const Bottomnavs({super.key});

  @override
  State<Bottomnavs> createState() => _BottomnavsState();
}

class _BottomnavsState extends State<Bottomnavs> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // double width = screenSize.width;
    // double height = screenSize.height;

    return ClipPath(
      clipper: UShapeClipper(),
      child: Container(
        width: screenSize.width,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.vertical(
            top: Radius.elliptical(screenSize.width, 20),
          ),
        ),
      ),
    );
  }
}

class JaggedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // path.lineTo(size.width, 0);
    // path.lineTo(size.width, size.height - 20);
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(0, size.height - 20);

    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);

    // path.lineTo(0, size.height - 20);
    // path.lineTo(size.width / 2, size.height);
    // path.lineTo(size.width, size.height - 20);
    // path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// class TopCenterInwardCurveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, 50); // Move down to start the curve

//     // Create an inward curve
//     path.quadraticBezierTo(
//       size.width / 2, -50, // Control point above the top edge for a dip
//       size.width, 50, // End point at the same level as the start
//     );

//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

// class JaggedClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     Path path = Path();
//     path.lineTo(0, size.height);
//     // var firstStart = Offset(size.width / 5, size.height);
//     // var firstEnd = Offset(size.width / 2.25, size.height - 50);
//     // path.quadraticBezierTo(
//     //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

//     // var secondStart =
//     //     Offset(size.width - (size.width / 3.24), size.height - 105);
//     // var secondEnd = Offset(size.width, size.height - 10);
//     // path.quadraticBezierTo(
//     //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
//     // path.lineTo(size.width, 0);
//     // path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

class UShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.3); // Start the path
    path.quadraticBezierTo(
      size.width / 2, -50, // Control point for the curve
      size.width, size.height * 0.3, // End point of the curve
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
