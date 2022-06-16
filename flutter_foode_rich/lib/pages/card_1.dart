import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/component/foodelich_theme.dart';

class CardOne extends StatelessWidget {
  const CardOne({Key? key}) : super(key: key);
  final String category = 'Editor\'s  Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img1.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderLichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 20,
              child: Text(
                title,
                style: FooderLichTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
                bottom: 30,
                right: 0,
                child: Text(
                  description,
                  style: FooderLichTheme.darkTextTheme.bodyText1,
                )),
            Positioned(
                bottom: 10,
                right: 0,
                child: Text(
                  chef,
                  style: FooderLichTheme.darkTextTheme.bodyText1,
                ))
          ],
        ),
      ),
    );
  }
}
