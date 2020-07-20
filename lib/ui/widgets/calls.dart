import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../dummy_data.dart';
import 'common_widgets.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Color(0xff00cc3f),
                      child: Icon(
                        Icons.group,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'New group call',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Color(0xff00cc3f),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'New contact',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
              // call history list comes here
              ...calls.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CommonCircleAvatar(e.imageUrl),
                      SizedBox(
                        width: 15.0,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.callFrom,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  e.isIncoming
                                      ? Icon(
                                          Icons.call_received,
                                          size: 15,
                                          color: Colors.red,
                                        )
                                      : Icon(
                                          Icons.call_made,
                                          size: 15,
                                          color: Colors.green,
                                        ),
                                  Text(
                                    DateFormat(
                                      'MMMM dd hh:mm',
                                    ).format(e.callTime),
                                    style: TextStyle(fontSize: 10.0),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      e.isVideoCall
                          ? Icon(
                              Icons.videocam,
                              size: 20,
                              color: Color(0xff075e55),
                            )
                          : Icon(
                              Icons.phone,
                              size: 20,
                              color: Color(0xff075e55),
                            ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
