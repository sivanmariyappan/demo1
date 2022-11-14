import 'package:flutter/material.dart';
import 'package:sql_lite_connection/login.dart';

void main() => runApp(
      authentication(),
    );

class authentication extends StatelessWidget {
  const authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
