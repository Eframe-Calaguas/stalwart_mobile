import 'package:flutter/material.dart';

//modal
class RejectConfirmationModal extends StatefulWidget {
  @override
  _RejectConfirmationModal createState() => _RejectConfirmationModal();
}

class _RejectConfirmationModal extends State<RejectConfirmationModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Material(
            type: MaterialType.transparency,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
              child: ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        child: Center(
                          child: Icon(
                            Icons.cancel_outlined,
                            color: Colors.red,
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
                                  'Reject',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.zero,
                                child: Text(
                                  'Why do you want to reject this request?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: TextField(
                                  keyboardType: TextInputType.multiline,
                                  //Normal textInputField will be displayed
                                  maxLines:
                                      3, // when user presses enter it will adapt to it
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 20),
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 20, 40, 20),
                                        shape: StadiumBorder(),
                                        side: BorderSide(
                                          width: 2.0,
                                          color: Colors.red,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Yes',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 20),
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
            bottom: 503,
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
