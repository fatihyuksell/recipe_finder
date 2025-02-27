import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:ui/components/recipe_list_item_widget.dart';

import 'home_view_model.dart';

class HomeView extends BaseView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: viewModel.onFavouriteRecipesPressed,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: viewModel.onSearchTextChanged,
              decoration: const InputDecoration(
                hintText: 'Search',
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Consumer<HomeViewModel>(
              builder: (___, __, _) => const _RecipeListWidget(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return diContainer<HomeViewModel>();
  }
}

class _RecipeListWidget extends StatelessWidget {
  const _RecipeListWidget();

  @override
  Widget build(BuildContext context) {
    final HomeViewModel viewModel = context.watch<HomeViewModel>();

    return ListView.builder(
      itemCount: viewModel.recipes.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final RecipeEntity recipe = viewModel.recipes[index];

        return RecipeListItemWidget(
          recipe: recipe,
          onRecipePressed: viewModel.onRecipePressed,
        );
      },
    );
  }
}
