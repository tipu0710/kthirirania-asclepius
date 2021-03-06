import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        top: false,
        right: false,
        left: false,
        child: Stack(
          children: <Widget>[
            getHeader(),
            Container(
              margin: EdgeInsets.only(top: 170),
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: GridView.count(
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        children: List.generate(100, (index) {
                          return Center(
                            child: Text(
                              'Item $index',
                              style: Theme.of(context).textTheme.headline,
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getHeader() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff0e98cf),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16.0),
            bottomLeft: Radius.circular(16.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ]),
      child: Padding(
        padding: EdgeInsets.only(right: 48.0, left: 32, top: 32, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    'assets/images/back.svg',
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Prescription Details',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/doctor_person.svg',
                      height: 46,
                      width: 46,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 6.0),
                          child: RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                  text: 'widget.prescription.doctor.prefix + '
                                      ',',
                                ),
                                TextSpan(
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                  text: ' widget.prescription.doctor.name,',
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SvgPicture.asset(
                              'assets/images/stethoscope.svg',
                              height: 20,
                              width: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Flexible(
                              child: Text(
                                'This prescription is added you, ',
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
