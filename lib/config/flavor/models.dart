enum FlavorType { dev, production }

FlavorType currentFlavor = FlavorType.dev;

class FlavorValues {
  FlavorValues({
    this.withDevicePreview = false,
    required this.flavorType,
  });

  final FlavorType flavorType;
  final bool withDevicePreview;
}
