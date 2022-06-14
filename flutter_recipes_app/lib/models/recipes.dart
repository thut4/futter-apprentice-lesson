class Ingredient {
  double? quantity;
  String? measure;
  String? name;
  Ingredient(this.quantity, this.measure, this.name);
}

class Recipe {
  String label;
  String? imageUrl;
  //ToDo: Add servings and ingredients here
  Recipe(this.label, this.imageUrl, this.serving, this.ingredients);
  int serving;
  List<Ingredient> ingredients;
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/spaghetti-meatballs.webp',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          '',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe('Tomato Soup', 'assets/tomato-soup.jpg', 2,
        [Ingredient(1, 'can', 'Tomato Soup')]),
    Recipe(
      'Grilled Cheese',
      'assets/grilled-cheese.jpg',
      1,
      [Ingredient(2, 'slices', 'Cheese'), Ingredient(1, 'slices', 'Bread')],
    ),
    Recipe('Choocolate Chip Cookies', 'assets/Choocolate.jpeg', 24, [
      Ingredient(
        4,
        'cups',
        'flour',
      ),
      Ingredient(
        2,
        'cups',
        'sugar',
      ),
      Ingredient(
        0.5,
        'cups',
        'chocolate chips',
      ),
    ]),
    Recipe('Taco Salad', 'assets/Taco.jpeg', 1, [
      Ingredient(
        4,
        'oz',
        'nachos',
      ),
      Ingredient(
        3,
        'oz',
        'taco meat',
      ),
      Ingredient(
        0.5,
        'cup',
        'cheese',
      ),
      Ingredient(
        0.25,
        'cup',
        'chopped tomatoes',
      ),
    ]),
    Recipe('Hawaiian Pizza', 'assets/Hawaiian.jpeg', 4, [
      Ingredient(
        1,
        'item',
        'pizza',
      ),
      Ingredient(1, 'cup', 'pineapple'),
      Ingredient(8, 'oz', 'ham')
    ]),
  ];
}
// ToDo: Add Ingredient() here