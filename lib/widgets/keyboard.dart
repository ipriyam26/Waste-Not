import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendingKeyboard extends StatelessWidget {
  const SendingKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(
              width: 2,
              color: Theme.of(context).dividerColor,
            ))),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                CupertinoIcons.camera_fill,
              ),
            ),
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: 16),
            child: TextField(
              style: TextStyle(
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: 'Type Something...',
                border: InputBorder.none,
              ),
            ),
          )),

          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.black,
              ))
          // Padding(
          //   padding: EdgeInsets.only(left: 12, right: 24.0),
          //   child: GlowingActionButton(
          //     color: AppColors.accent,
          //     icon: Icons.send_rounded,
          //     onPressed: () {},
          //   ),
          // )
        ],
      ),
    );
  }
}
