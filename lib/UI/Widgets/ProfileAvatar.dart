import 'package:flutter/material.dart';

class ProfileAvatar extends StatefulWidget {
  ProfileAvatar({Key? key}) : super(key: key);

  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return CircleAvatar(
      radius: screen.height * 0.05,
    );
  }
}
