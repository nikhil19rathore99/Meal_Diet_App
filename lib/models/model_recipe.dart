class Recipe {
  final String spoonacularSourceUrl;

  Recipe({this.spoonacularSourceUrl});
  // euipments, ingredients, steps, etc
  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(spoonacularSourceUrl: map['spoonacularSourceUrl']);
  }
}
