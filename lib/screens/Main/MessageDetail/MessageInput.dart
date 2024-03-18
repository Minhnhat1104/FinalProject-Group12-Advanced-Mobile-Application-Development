import 'package:flutter/material.dart';
import 'package:student_hub/constants/style.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(color: Colors.grey[200]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: TextFormField(
                  minLines: 2,
                  maxLines: 2,
                  // The validator receives the text that the user has entered.
                  decoration: inputOutlined('Chat content'),
                ),
              ),
              SizedBox(width: 8),
              IconButton(
                onPressed: () => {},
                // color: Colors.pink,
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                  size: 28.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
