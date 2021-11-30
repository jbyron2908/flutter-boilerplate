import 'models.dart';

class Flavor {
  Flavor._();

  static Flavor get instance => _instance ?? (_instance = Flavor._());
  static FlavorValues get value => instance.flavorValue;

  static Flavor? _instance;

  FlavorValues flavorValue = _getFlavorDevValues();

  void setupFlavor(String value) {
    switch (value) {
      case "development":
        flavorValue = _getFlavorDevValues();
        break;
      case "production":
        flavorValue = _getFlavorProdValues();
        break;
      default:
        flavorValue = _getFlavorDevValues();
    }
  }

  static FlavorValues _getFlavorDevValues() {
    return FlavorValues(
      flavorType: FlavorType.dev,
      baseUrlRest: 'https://api.github.com',
      baseUrlGraphQL: 'https://api.github.com/graphql',
      githubToken: '',
    );
  }

  static FlavorValues _getFlavorProdValues() {
    return FlavorValues(
      flavorType: FlavorType.production,
      baseUrlRest: 'https://api.github.com',
      baseUrlGraphQL: 'https://api.github.com/graphql',
      githubToken: '',
    );
  }
}
