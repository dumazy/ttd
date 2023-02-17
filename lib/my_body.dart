import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          Text('Test'),
          SizedBox(
            width: 200,
            height: 200,
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
