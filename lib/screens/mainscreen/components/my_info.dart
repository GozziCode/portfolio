import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: Column(children: [
          const Spacer(
            flex: 2,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/me.jpg'),
          ),
          const Spacer(),
          Text(
            'Uma Godwin Eke',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text(
            'Flutter developer and Accountant',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
          ),
          const Spacer(
            flex: 2,
          ),
        ]),
      ),
    );
  }
}
