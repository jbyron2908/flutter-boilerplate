import 'package:flutter/foundation.dart';

import 'models.dart';

class Flavor {
  Flavor._();

  static Flavor get instance => _instance ?? (_instance = Flavor._());
  static FlavorValues get value => instance._flavorValue;

  static Flavor? _instance;

  FlavorValues _flavorValue = _getFlavorDevValues();

  void setupFlavor(String flavor) {
    switch (flavor) {
      case "development":
        _flavorValue = _getFlavorDevValues();
        break;
      case "production":
        _flavorValue = _getFlavorProdValues();
        break;
      default:
        _flavorValue = _getFlavorDevValues();
    }
  }

  static FlavorValues _getFlavorDevValues() {
    return FlavorValues(
      flavorType: FlavorType.dev,
      withDevicePreview: kIsWeb,
    );
  }

  static FlavorValues _getFlavorProdValues() {
    return FlavorValues(
      flavorType: FlavorType.production,
    );
  }
}
