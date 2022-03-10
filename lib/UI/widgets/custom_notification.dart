import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCounterIcon extends StatelessWidget {

  const CustomCounterIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Icon(CupertinoIcons.bell, color: Colors.white,),
        Positioned(
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(1),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
            constraints: const BoxConstraints(
              minWidth: 15,
              minHeight: 15,
            ),
            child: const Center(
              child: Text('8', style: TextStyle(
                  color: Colors.white,
                  fontSize: 8
              ),
                textAlign: TextAlign.center,),
            ),
          ),
        )
      ],
    );
  }
}