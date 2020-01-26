class Meal {
  final int id;
  final String title;
  final String imageUrl;
//This class has an ID which allows us to get the Recipes and other info
//Such as title and Image URL

/*
Factory Constructor Meal.fromMap parses the decoded JSON data to get the 
values of the meal, and returns the Meal Object
*/
  Meal({this.id, this.title, this.imageUrl});
  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      id: map['id'],
      title: map['title'],
      imageUrl: 'https://spoonacular.com/recipeImages/' + map['image'],
    );
  }
}
