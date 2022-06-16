import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/component/foodelich_theme.dart';
import 'package:flutter_fooder_rich/pages/author_card.dart';

class Card2 extends StatefulWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  State<Card2> createState() => _Card2State();
}

class _Card2State extends State<Card2> {
  @override
  Widget build(BuildContext context) {
    return Center(
// 1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
// 2
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Michel',
              title: 'Smoothie for Everyone ',
              imageProvider: NetworkImage(
                  'https://thumbs.dreamstime.com/b/cooking-culinary-people-concept-happy-smiling-male-chef-toque-showing-ok-hand-sign-over-grey-background-happy-smiling-male-211915057.jpg'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Receipe',
                      style: FooderLichTheme.lightTextTheme.headline1,
                    )),
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderLichTheme.lightTextTheme.headline1,
                      ),
                    )),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
