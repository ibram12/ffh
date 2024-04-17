import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> messages = [
    Message(
      text: 'Hello!',
      isAi: true,
      backgroundColor: Colors.white,
      time: DateTime.now(),
    ),
  ];

  Color selectedBackgroundColor =
      Colors.blue; // Default selected background color for user message
  Color selectedBorderColor =
      Colors.blue; // Default selected border color for AI message
  Color sendButtonBackgroundColor =
      Colors.grey; // Default send button background color
  bool isSendButtonActive = false; // Flag to track send button state

  List<Color> colors = [
    Color(0XFFC161F9),
    Color(0XFFBCE369),
    Color(0XFFFFE4EE),
    Color(0XFFFFD68F),
    Color(0XFFB9CDFE),
    Color(0XFFFF8FB8),
    Color(0XFFF6E4FF),
    Color(0XFFD68FFF),
  ]; // List of colors

  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(''),
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.all(16)),
          Row(children: [
            // Text(
            //   'اللغه',
            //   style: TextStyle(
            //     fontFamily: 'Tajawal',
            //     fontSize: 30,
            //   ),
            // ),
            IconButton(
              //padding: EdgeInsets.only(right: 30),
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ])
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: Center(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  final color = colors[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedBackgroundColor = color;
                        selectedBorderColor = color;
                        sendButtonBackgroundColor =
                            color; // Update send button color
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(4.0),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedBackgroundColor == color
                              ? Colors.black
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final alignment = message.isAi
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end;
                final borderRadius = message.isAi
                    ? BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(6.0),
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(6.0),
                      )
                    : BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(6.0),
                        bottomLeft: Radius.circular(6.0),
                        bottomRight: Radius.circular(20.0),
                      );

                return Column(
                  crossAxisAlignment: alignment,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 20.0),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: message.isAi
                            ? Colors.white
                            : selectedBackgroundColor,
                        borderRadius: borderRadius,
                        border: Border.all(
                          color: message.isAi
                              ? selectedBorderColor
                              : Colors.transparent,
                          width: 1.0,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            message.text,
                            style: TextStyle(
                              fontFamily: "Tajawal",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: message.isAi ? Colors.black : Colors.black,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4.0),
                            child: Text(
                              DateFormat.jm().format(message.time),
                              style: TextStyle(
                                fontFamily: "Tajawal",
                                fontWeight: FontWeight.bold,
          
                                  fontSize: 11.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 8.0, right: 8),
            decoration: BoxDecoration(
              color: isSendButtonActive
                  ? sendButtonBackgroundColor
                  : Color.fromARGB(4, 3, 2, 1), // Use active/inactive colors
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(4.4 * 3.1415927 / 4),
              child: IconButton(
                icon: Icon(Icons.send_rounded, color: Colors.white),
                onPressed: isSendButtonActive
                    ? () {
                        setState(() {
                          messages.insert(
                            0,
                            Message(
                              text: _textController.text,
                              isAi: false,
                              backgroundColor: selectedBackgroundColor,
                              time: DateTime.now(),
                            ),
                          );
                          _textController.clear(); // Clear input field
                          isSendButtonActive = false; // Deactivate button
                        });
                      }
                    : null, // Disable button if inactive
              ),
            ),
          ),
          Expanded(
            child: TextField(
              controller: _textController,
              onChanged: (text) {
                setState(() {
                  isSendButtonActive = text.isNotEmpty; // Update button state
                });
              },
              decoration: InputDecoration(
                hintText: 'ارسل رساله',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Message {
  String text;
  bool isAi;
  Color? colorArrow;
  Color? backgroundColor; // Background color for user message
  Color? textColor; // Text color for user message
  Color? borderColor; // Border color for AI message

  DateTime time;

  Message(
      {required this.text,
      required this.isAi,
      this.backgroundColor,
      this.textColor,
      this.borderColor,
      required this.time});
}
