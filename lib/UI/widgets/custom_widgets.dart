import 'package:flutter/material.dart';

Widget circularWidget({required bool isSmall, required String value, required double currentValue, String? text}){

  return Column(
    children: [
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: isSmall ? 50 : 100,
            width: isSmall ? 50 : 100,
            decoration: BoxDecoration(
                color: isSmall ? Colors.grey[200] : Colors.green[400],
                shape: BoxShape.circle
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(value, style: TextStyle(color: isSmall ? Colors.black : Colors.white, fontSize: isSmall ? 12 : 25),),
                isSmall ? const SizedBox.shrink()
                : const Text('Good', style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
          SizedBox(
            height: isSmall ? 60 : 130,
            width: isSmall ? 60 : 130,
            child: CircularProgressIndicator(
              value: currentValue,
              strokeWidth: 2,
              backgroundColor: Colors.grey[100],
              color: isSmall ? Colors.orange : Colors.green[400],
            ),
          )
        ],
      ),
      isSmall ? Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text('$text', ),
      ) : const SizedBox.shrink()
    ],
  );
}