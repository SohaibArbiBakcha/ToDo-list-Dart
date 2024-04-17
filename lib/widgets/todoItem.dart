// ignore_for_file: prefer_const_constructors

import '../constants/colors.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white,
          leading: Icon(
            Icons.check_box,
            color: tdBlue,
          ),
          title: Text(
            'Check Mail',
            style: TextStyle(
                fontSize: 16,
                color: tbBlack,
                decoration: TextDecoration.lineThrough),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          trailing: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(5)),
            child: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.white,
              iconSize: 18,
              onPressed: () {},
            ),
          ),
        ));
  }
}
