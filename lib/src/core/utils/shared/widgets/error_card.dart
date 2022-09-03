import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ErrorCard extends StatelessWidget {
  final String errorMsg;
  const ErrorCard({
    Key? key,
    required this.errorMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: Text(
          errorMsg,
          style: const TextStyle(
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
