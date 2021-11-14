import 'package:flutter/material.dart';
import '/pages/shared/listItem.dart';

Widget ListWidget(ListItem listItem) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Hero(
            tag: '${listItem.header}',
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(listItem.imgUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listItem.header,
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Icon(Icons.person),
                    Text(
                      listItem.author,
                      style: TextStyle(fontSize: 12.0),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(Icons.date_range),
                    Text(
                      listItem.date,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
