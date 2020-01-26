import 'package:meal_diet_app/models/model_meal.dart';

class MealPlan {
  final List<Meal> meals;
  final double calories;
  final double fat;
  final double protien;
  final double carbs;

  MealPlan({this.meals, this.calories, this.fat, this.protien, this.carbs});
  /*
The factory constructor iterates over the list of meals and our decoded mealplan
data and creates a list of meals.
Then, we return MealPlan object with all the information 
*/

  factory MealPlan.fromMap(Map<String, dynamic> map) {
    List<Meal> meals = [];
    map['meals'].forEach((mealMap) => meals.add(Meal.fromMap(mealMap)));
    return MealPlan(
      meals: meals,
      calories: map['nutrients']['calories'],
      carbs: map['nutrients']['carbohydrates'],
      fat: map['nutrients']['fat'],
      protien: map['nutrients']['protein'],
    );
  }
}
