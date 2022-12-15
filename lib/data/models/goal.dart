import 'package:easy_localization/easy_localization.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

enum Goal {
  drinkWater,
  loseWeight,
  shineSkin,
  healthyLifeStyle,
  improveDigestion,
  other,
}

extension GoalsWidgetParams on Goal {
  String get title {
    switch (this) {
      case Goal.drinkWater:
        return LocaleKeys.drink_more_water.tr();
      case Goal.loseWeight:
        return LocaleKeys.lose_weight.tr();
      case Goal.shineSkin:
        return LocaleKeys.shine_skin.tr();
      case Goal.healthyLifeStyle:
        return LocaleKeys.lead_a_healthy_lifestyle.tr();
      case Goal.improveDigestion:
        return LocaleKeys.improve_digestion.tr();
      case Goal.other:
        return LocaleKeys.another.tr();
    }
  }

  String get assetPath {
    switch (this) {
      case Goal.drinkWater:
        return Assets.images.bottle.path;
      case Goal.loseWeight:
        return Assets.images.weight.path;
      case Goal.shineSkin:
        return Assets.images.stars.path;
      case Goal.healthyLifeStyle:
        return Assets.images.hike.path;
      case Goal.improveDigestion:
        return Assets.images.carrot.path;
      case Goal.other:
        return Assets.images.dumbbells.path;
    }
  }
}
