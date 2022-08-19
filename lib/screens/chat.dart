import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/keyboard.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50.sp,
                  child: Image.asset('assets/user2.png'),
                ),
                Text(
                  'Danny Hopkins',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp),
                )
              ],
            ),
            Expanded(child: DemoMsgList()),
            SendingKeyboard(),
          ],
        ),
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leadingWidth: 54,
          // leading: Align(
          //     alignment: Alignment.centerRight,
          //     child: IconBackground(
          //       icon: CupertinoIcons.back,
          //       onTap: () {
          //         Navigator.of(context).pop();
          //       },
          //     )),
          // // title: AppBarTitle(
          // //   messageData: messageData,
          // // ),
        ),
      ),
    );
  }
}

class IconBorder extends StatelessWidget {
  const IconBorder({Key? key, required this.onTap, required this.icon})
      : super(key: key);

  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      splashColor: Colors.black,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(
              width: 2,
              color: Theme.of(context).cardColor,
            )),
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Icon(
            icon,
            size: 16,
          ),
        ),
      ),
    );
  }
}

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Avatar.small(url: messageData.profilePicture),
        SizedBox(
          width: 16,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('fgdfg',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                )),
            SizedBox(
              height: 2,
            ),
            Text(
              'Online',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ],
        ))
      ],
    );
  }
}

class DemoMsgList extends StatelessWidget {
  const DemoMsgList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DateLabel(label: 'Yesterday'),
        _MessageTile(
          message:
              'I commented  Figma, I want to add some fancy . Do you have any icon set?',
          messageData: '12:02 PM',
        ),
        _MessageOwnTile(
          message:
              'I am in a process of designing some. When do you need them?',
          messageData: '12:02 PM',
        ),
        _MessageTile(
          message: 'Next month?',
          messageData: '12:02 PM',
        ),
        _MessageOwnTile(
          message:
              'I am almost . Please  me your email, I will ZIP  and send you as s.',
          messageData: '12:02 PM',
        ),
        _MessageTile(
          message: 'maciej.kowalski@email.com',
          messageData: '12:02 PM',
        ),
        _MessageOwnTile(
          message: 'ASDASDASDAD',
          messageData: '12:02 PM',
        ),
      ],
    );
  }
}

class DateLabel extends StatelessWidget {
  const DateLabel({Key? key, required this.label}) : super(key: key);

  final String label;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _MessageTile extends StatelessWidget {
  const _MessageTile(
      {Key? key, required this.message, required this.messageData})
      : super(key: key);

  final String message;
  final String messageData;
  static const _br = 26.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 20.sp),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.32),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(_br))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Text(message),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                messageData,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageOwnTile extends StatelessWidget {
  const _MessageOwnTile(
      {Key? key, required this.message, required this.messageData})
      : super(key: key);

  final String message;
  final String messageData;
  static const _br = 26.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20.sp),
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 12,
                      color: Color.fromRGBO(0, 0, 0, 0.32),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(_br))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                child: Text(message),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                messageData,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
