import 'package:flutter/material.dart';
import 'package:recipe_finder/app/presentation/screens/favourite_recipes/favourite_recipes_view.dart';
import 'package:recipe_finder/app/presentation/screens/route_not_found/route_not_found_view.dart';

import '../screens/home/home_view.dart';
import '../screens/recipe_detail/recipe_detail_view.dart';
import 'routes.dart';

class RouteManager {
  static String initialRoute = Routes.home.path;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final route = Routes.fromRouteSettings(settings);

    WidgetBuilder? builder;

    switch (route) {
      case Routes.home:
        builder = (_) => const HomeView();
        break;
      case Routes.recipeDetail:
        builder = (_) => const RecipeDetailView();
        break;
      case Routes.favouriteRecipes:
        builder = (_) => const FavouriteRecipesView();
        break;
      case Routes.notFound:
        builder = (_) => const RouteNotFoundView();
        break;
    }

    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }

  static Future<T?> navigateTo<T extends Object?>(
    BuildContext context,
    Routes route, {
    dynamic arguments,
  }) {
    return Navigator.pushNamed<T>(
      context,
      route.path,
      arguments: arguments,
    );
  }

  static void back(BuildContext context) {
    Navigator.pop(context);
  }
}