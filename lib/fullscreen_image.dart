import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;
class FullsreenImage extends StatefulWidget {
  String imgpath;
  FullsreenImage(this.imgpath);

  @override
  _FullsreenImageState createState() => _FullsreenImageState();
}

class _FullsreenImageState extends State<FullsreenImage> {
  final LinearGradient backgropund = new LinearGradient(
      colors: [new Color(0x10000000), new Color(0x30000000)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  double _scale = 1.0;
  double _previesscale = 1.0;

  @override
  Widget build(BuildContext context) {
    //return Container(child: Center(child: Text('data'),),);
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onScaleStart: (ScaleStartDetails details) {
            _previesscale = _scale;
            setState(() {});
          },
          onScaleUpdate: (ScaleUpdateDetails details) {
            _scale = _previesscale * details.scale;
            setState(() {});
          },
          onScaleEnd: (ScaleEndDetails details) {
            _previesscale = 1.0;
            setState(() {});
          },
          child: SizedBox.expand(
            child: Container(
              decoration: BoxDecoration(gradient: backgropund),
              child: Stack(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.center,
                    //child: Image.network(imgpath),
                    child: Hero(
                      tag: widget.imgpath,
                      child: Transform(
                        alignment: FractionalOffset.center,
                        transform: Matrix4.diagonal3(Vector3(_scale,_scale,_scale)),
                        child: Image.network(widget.imgpath)),
                    ),
                  ),
                  new Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        AppBar(
                          elevation: 0.0,
                          backgroundColor: Colors.transparent,
                          leading: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.black,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
