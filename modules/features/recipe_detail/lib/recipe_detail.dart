library recipe_detail;

import 'package:injectable/injectable.dart';

@InjectableInit.microPackage(
  preferRelativeImports: true,
  throwOnMissingDependencies: false,
  createGetItHelper: true,
)
void initMicroPackage() {}