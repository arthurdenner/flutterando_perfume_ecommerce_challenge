import 'package:flutter/material.dart';
import 'package:weather_calendar_app/src/utils/constants.dart';
import 'package:weather_calendar_app/src/utils/media_query.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shouldShowInfo = isSmBreakpoint(context);

    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Los Angeles',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Feb 03, Tuesday',
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: AVATAR_SIZE,
                ),
              ),
              if (shouldShowInfo)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Alexander Paul',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Basic level',
                      style: TextStyle(
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }
}
