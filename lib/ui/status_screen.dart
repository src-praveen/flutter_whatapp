import 'package:flutter/material.dart';
import 'package:flutter_whatapp/dummy_data.dart';

import 'widgets/common_widgets.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              buildStatusRow(
                  'https://img.icons8.com/pastel-glyph/2x/person-male.png',
                  'My status',
                  'Tap to add new status',
                  true),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      alignment: Alignment.centerLeft,
                      color: Colors.grey.shade300,
                      height: 50.0,
                      child: Text(
                        'Recent updates',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black45),
                      ),
                    ),
                  ),
                ],
              ),
              ..._statusRowBuilder(),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.grey[200],
                  onPressed: () {},
                  child: Icon(
                    Icons.edit,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FloatingActionButton(
                  backgroundColor: Color(0xff00cc3f),
                  onPressed: () {},
                  child: Icon(Icons.photo_camera),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  List<Widget> _statusRowBuilder() {
    return status
        .map(
          (e) => buildStatusRow(e.imageUrl, e.title, e.subTitle, e.isMyStatus),
        )
        .toList();
  }

  Row buildStatusRow(
      String imageUrl, String title, String subTitle, bool isMyStatus) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: [
              CommonCircleAvatar(imageUrl),
              isMyStatus
                  ? Positioned(
                      left: 30.0,
                      top: 30.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          color: Color(0xff00cc3f),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    )
                  : Container()
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(fontSize: 12.0, color: Colors.black45),
                    ),
                  ],
                ),
                !isMyStatus
                    ? Divider(
                        color: Colors.black26,
                        thickness: 0.4,
                        indent: 1,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
