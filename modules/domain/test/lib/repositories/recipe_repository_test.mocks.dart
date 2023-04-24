// Mocks generated by Mockito 5.4.0 from annotations
// in domain/test/lib/repositories/recipe_repository_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:domain/domain.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeRemoteRecipeDataSource_0 extends _i1.SmartFake
    implements _i2.RemoteRecipeDataSource {
  _FakeRemoteRecipeDataSource_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLocalRecipeFavoriteDataSource_1 extends _i1.SmartFake
    implements _i2.LocalRecipeFavoriteDataSource {
  _FakeLocalRecipeFavoriteDataSource_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRecipesCacheDatabase_2 extends _i1.SmartFake
    implements _i2.RecipesCacheDatabase {
  _FakeRecipesCacheDatabase_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [RecipeRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRecipeRepository extends _i1.Mock implements _i2.RecipeRepository {
  MockRecipeRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.RemoteRecipeDataSource get remoteDataSource => (super.noSuchMethod(
        Invocation.getter(#remoteDataSource),
        returnValue: _FakeRemoteRecipeDataSource_0(
          this,
          Invocation.getter(#remoteDataSource),
        ),
      ) as _i2.RemoteRecipeDataSource);
  @override
  _i2.LocalRecipeFavoriteDataSource get localFavoriteDataSource =>
      (super.noSuchMethod(
        Invocation.getter(#localFavoriteDataSource),
        returnValue: _FakeLocalRecipeFavoriteDataSource_1(
          this,
          Invocation.getter(#localFavoriteDataSource),
        ),
      ) as _i2.LocalRecipeFavoriteDataSource);
  @override
  _i2.RecipesCacheDatabase get recipesCacheDatabase => (super.noSuchMethod(
        Invocation.getter(#recipesCacheDatabase),
        returnValue: _FakeRecipesCacheDatabase_2(
          this,
          Invocation.getter(#recipesCacheDatabase),
        ),
      ) as _i2.RecipesCacheDatabase);
  @override
  _i3.Future<Iterable<_i2.RecipeEntity>> searchRecipes(
          {required String? query}) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchRecipes,
          [],
          {#query: query},
        ),
        returnValue:
            _i3.Future<Iterable<_i2.RecipeEntity>>.value(<_i2.RecipeEntity>[]),
      ) as _i3.Future<Iterable<_i2.RecipeEntity>>);
  @override
  _i3.Future<Iterable<_i2.RecipeEntity>> getFavoriteRecipes() =>
      (super.noSuchMethod(
        Invocation.method(
          #getFavoriteRecipes,
          [],
        ),
        returnValue:
            _i3.Future<Iterable<_i2.RecipeEntity>>.value(<_i2.RecipeEntity>[]),
      ) as _i3.Future<Iterable<_i2.RecipeEntity>>);
  @override
  _i3.Future<void> addFavoriteRecipe(_i2.RecipeEntity? recipe) =>
      (super.noSuchMethod(
        Invocation.method(
          #addFavoriteRecipe,
          [recipe],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> removeFavoriteRecipe(_i2.RecipeEntity? recipe) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeFavoriteRecipe,
          [recipe],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<Iterable<_i2.RecipeEntity>> getRecipes() => (super.noSuchMethod(
        Invocation.method(
          #getRecipes,
          [],
        ),
        returnValue:
            _i3.Future<Iterable<_i2.RecipeEntity>>.value(<_i2.RecipeEntity>[]),
      ) as _i3.Future<Iterable<_i2.RecipeEntity>>);
}