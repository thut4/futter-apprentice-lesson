import 'package:flutter/material.dart';
import 'package:flutter_recipes_app/models/recipes.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Image(image: AssetImage(widget.recipe.imageUrl!)),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            widget.recipe.label,
            style: const TextStyle(fontSize: 20),
          ),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.recipe.ingredients.length,
                  itemBuilder: (BuildContext context, int index) {
                    final ingredient = widget.recipe.ingredients[index];
                    return Text('${ingredient.quantity! * _sliderVal} '
                        '${ingredient.measure} '
                        '${ingredient.name}');
                    // return Text(
                    //     '${ingredient.quantity!} ${ingredient.measure!} ${ingredient.name!}');
                  })),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${_sliderVal * widget.recipe.serving}servings',
            value: _sliderVal.toDouble(),
            onChanged: (newValue) {
              setState(() {
                _sliderVal = newValue.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.black,
          )
        ],
      )),
    );
  }
}
