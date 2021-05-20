import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isME;
  final Key key;
  final String userName;

  MessageBubble(this.message, this.isME, this.userName, {this.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isME ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: 140,
          ),
          decoration: BoxDecoration(
            color: isME ? Colors.grey[300] : Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: isME ? Radius.circular(15) : Radius.circular(0),
                bottomRight: !isME ? Radius.circular(15) : Radius.circular(0)),
          ),
          margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment:
                isME ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isME
                      ? Colors.black
                      : Theme.of(context).accentTextTheme.headline1.color,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                message,
                style: TextStyle(
                  color: isME
                      ? Colors.black
                      : Theme.of(context).accentTextTheme.headline1.color,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
