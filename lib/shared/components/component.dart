import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

Widget buildArticleItem(list) => InkWell(
  onTap: (){},
  child:  Padding(
    padding: const EdgeInsets.all(20.0),
    child:   Row(
      children:
      [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage('https://play-lh.googleusercontent.com/uAu69C99ameBLdlE1Iv2ypibSqwQ3lqQGqm0NzcR1XpQ5gjBfNfW2sotbhfg2hPSjGZ3'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Expanded(
                  child: Text(
                    '${list['title']}',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Text(
                  '${list['publishedAt']}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  ),
);

Widget myDivide() => Container(
  height: 1,
  width: double.infinity,
  color: Colors.grey[300],
);

Widget articleBuilder(list) => ConditionalBuilder(
    condition: list.length > 0,
    builder: (context) => ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index) => buildArticleItem(list[index]),
      separatorBuilder: (context,index) => myDivide(),
      itemCount: list.length,
    ),
    fallback: (context) => Center(child: CircularProgressIndicator()),
);