import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/constants/buaberry_images.dart';
import '../../../../shared/constants/lang_keys.dart';
import '../model/menu_m.dart';

part 'menu_provider.g.dart';

@riverpod
List<MenuM> menuList(Ref ref) {
  return <MenuM>[
    // MenuM(id: 1, name: LangKeys.SANDWICH_TUNA, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 2, name: LangKeys.SANDWICH_TUNA_BOLOGNA, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 3, name: LangKeys.SANDWICH_CRAB_STICK, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 4, name: LangKeys.SANDWICH_CRAB_STICK_BOLOGNA, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 5, name: LangKeys.SANDWICH_CRAB_STICK_CORN, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 6, name: LangKeys.SANDWICH_PORK_FLOSS_BOLOGNA, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 7, name: LangKeys.SANDWICH_HAM_CHEESE, description: '-', price: LangKeys.TWENTY_BATH),
    // MenuM(id: 8, name: LangKeys.SANDWICH_SAUSAGE_FRIED_EGG, description: '-', price: LangKeys.TWENTY_BATH),
    MenuM(id: 9, name: LangKeys.VH_CORN, description: '-', imageId: BuaberryImages.VH_CRON_IMAGE, price: LangKeys.TWENTY_BATH),
    // MenuM(id: 10, name: LangKeys.VH_BANANA, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 11, name: LangKeys.VH_PURPLE_POTATO, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 12, name: LangKeys.VH_PUMPKIN, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 13, name: LangKeys.VH_TARO, description: '-', price: LangKeys.TWENTY_BATH),
    MenuM(id: 14, name: LangKeys.D_BROWNIE, description: '-', imageId: BuaberryImages.D_BROWNIE_IMAGE, price: LangKeys.TEN_BATH),
    MenuM(id: 15, name: LangKeys.D_BANANA_CAKE, description: '-', imageId: BuaberryImages.D_BANANA_CAKE_IMAGE, price: LangKeys.TEN_BATH),
    // MenuM(id: 16, name: LangKeys.D_JAM_BREAD, description: '-', price: LangKeys.TEN_BATH),
    MenuM(id: 17, name: LangKeys.D_SAUSAGE_BREAD, description: '-', imageId: BuaberryImages.D_SAUSAGE_BREAD_IMAGE, price: LangKeys.TEN_BATH),
    // MenuM(id: 18, name: LangKeys.D_CRAB_STICK_BREAD, description: '-', price: LangKeys.TEN_BATH),
    MenuM(id: 19, name: LangKeys.D_CRISPY_COOKIE, description: '-', imageId: BuaberryImages.D_CRISPY_COOKIE_IMAGE, price: LangKeys.TEN_BATH),
    // MenuM(id: 20, name: LangKeys.D_WAFFLE, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 21, name: LangKeys.D_SAUSAGE_WAFFLE, description: '-', price: LangKeys.TEN_BATH),
    MenuM(id: 22, name: LangKeys.D_FILLING_BREAD, description: '-', imageId: BuaberryImages.D_FILLING_BREAD_IMAGE, price: LangKeys.TEN_BATH),
    MenuM(id: 23, name: LangKeys.D_CORNFLAKE, description: '-', imageId: BuaberryImages.D_CORNFLAKE_IMAGE, price: LangKeys.TEN_BATH),
    // MenuM(id: 24, name: LangKeys.D_BUTTER_SUGAR_BREAD, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 25, name: LangKeys.D_GARLIC_BREAD, description: '-', price: LangKeys.TEN_BATH),
    MenuM(id: 26, name: LangKeys.D_DAIFUKU, description: '-', imageId: BuaberryImages.D_DAIFUKU_IMAGE, price: LangKeys.TEN_BATH),
    // MenuM(id: 27, name: LangKeys.S_MINCED_PORK_SALTY_EGG, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 28, name: LangKeys.S_MINCED_PORK, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 29, name: LangKeys.S_ROAST_RED_PORK, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 30, name: LangKeys.S_RED_BEAN, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 31, name: LangKeys.S_TARO, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 32, name: LangKeys.S_BREAD_STICK, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 33, name: LangKeys.S_CHOCOLATE_STICK, description: '-', price: LangKeys.TEN_BATH),
    // MenuM(id: 34, name: LangKeys.S_CHOCOLATE_CORN_CHIP, description: '-', price: LangKeys.TEN_BATH),
  ];
}
