import 'package:flutter/material.dart';

//modal
class ConfirmationModal extends StatefulWidget {
  @override
  _ConfirmationModalState createState() => _ConfirmationModalState();
}

class _ConfirmationModalState extends State<ConfirmationModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 250),
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child: Icon(
                            Icons.check_circle_outline,
                            color: Colors.blue,
                            size: 100,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                child: Text(
                                  'Approve',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Text(
                                  'Are sure you want to approve this?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 20, 40, 20),
                                        shape: StadiumBorder(),
                                        side: BorderSide(
                                          width: 2.0,
                                          color: Colors.blue,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.zero,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 20, 40, 20),
                                        shape: StadiumBorder(),
                                        side: BorderSide(
                                          width: 2.0,
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'No',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 453,
            child: Container(
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  double radius = 15.0;
  @override
  Path getClip(Size size) {
    // ignore: dead_code
    Path path = Path();
    path.lineTo(radius, 0);
    path.arcToPoint(
      Offset(0.0, radius),
      clockwise: false,
      radius: Radius.circular(radius),
    );

    path.lineTo(0.0, size.height - radius);
    path.arcToPoint(
      Offset(radius, size.height),
      clockwise: false,
      radius: Radius.circular(radius),
    );

    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(
      Offset(size.width, size.height - radius),
      clockwise: false,
      radius: Radius.circular(radius),
    );

    path.lineTo(size.width, 30);
    path.arcToPoint(
      Offset(size.width - 50, 0.0),
      clockwise: true,
      radius: Radius.circular(30),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}
