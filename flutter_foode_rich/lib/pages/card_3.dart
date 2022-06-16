import 'package:flutter/material.dart';
import 'package:flutter_fooder_rich/component/foodelich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img2.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // dark overlay
            // container
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Receipe Trends',
                    style: FooderLichTheme.darkTextTheme.headline2,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                runSpacing: 12,
                children: [
                  Chip(
                    label: Text(
                      'Healthy',
                      style: FooderLichTheme.darkTextTheme.bodyText1,
                    ),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: Text('Vegan',
                        style: FooderLichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: Text('Carrots',
                        style: FooderLichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: Text('Potatoes',
                        style: FooderLichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {},
                  ),
                  Chip(
                    label: Text('Apple',
                        style: FooderLichTheme.darkTextTheme.bodyText1),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {},
                  ),
                ],
              ),
            )
            //center
          ],
        ),
      ),
    );
  }
}
