import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

enum Goals {
  drinkWater,
  loseWeight,
  shineSkin,
  healthyLifeStyle,
  improveDigestion,
  other,
}

extension GoalsWidgetParams on Goals {
  String get title {
    switch (this) {
      case Goals.drinkWater:
        return LocaleKeys.drink_more_water.tr();
      case Goals.loseWeight:
        return LocaleKeys.lose_weight.tr();
      case Goals.shineSkin:
        return LocaleKeys.shine_skin.tr();
      case Goals.healthyLifeStyle:
        return LocaleKeys.lead_a_healthy_lifestyle.tr();
      case Goals.improveDigestion:
        return LocaleKeys.improve_digestion.tr();
      case Goals.other:
        return LocaleKeys.another.tr();
    }
  }

  String get assetPath {
    switch (this) {
      case Goals.drinkWater:
        return Assets.images.bottle.path;
      case Goals.loseWeight:
        return Assets.images.weight.path;
      case Goals.shineSkin:
        return Assets.images.stars.path;
      case Goals.healthyLifeStyle:
        return Assets.images.hike.path;
      case Goals.improveDigestion:
        return Assets.images.carrot.path;
      case Goals.other:
        return Assets.images.dumbbells.path;
    }
  }
}
