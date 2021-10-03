import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

import 'container_square.dart';

class TextFormSearch extends StatelessWidget {
  const TextFormSearch({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Text('Am I infected with covid 19?'),
    );
  }
}
