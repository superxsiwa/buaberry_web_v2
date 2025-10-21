import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../shared/constants/buaberry_images.dart';
import '../../../../shared/constants/lang_keys.dart';
import '../model/sale_point_m.dart';

part 'sale_point_provider.g.dart';

@riverpod
List<SalePointM> salePointList(Ref ref) {
  return <SalePointM>[
    SalePointM(id: 1, name: LangKeys.E_UBRU_CANTEEN_1, description: ''),
    SalePointM(id: 2, name: LangKeys.E_UBRU_CANTEEN_2, description: ''),
    SalePointM(id: 3, name: LangKeys.E_UBRU_CANTEEN_3, description: ''),
    SalePointM(id: 4, name: LangKeys.E_UBRU_WAKEUP, description: ''),
    SalePointM(id: 6, name: LangKeys.E_TPU_CANTEEN, description: ''),
    SalePointM(id: 7, name: LangKeys.E_UTC_CANTEEN, description: ''),
    SalePointM(id: 8, name: LangKeys.E_BOYS_CANTEEN, description: ''),
    SalePointM(id: 9, name: LangKeys.D_UBRU_WATER_SHOP, description: ''),
    SalePointM(id: 10, name: LangKeys.D_DAMPHRA_WATER_SHOP, description: ''),
    SalePointM(id: 11, name: LangKeys.D_50PANSA_WATER_SHOP, description: ''),
    SalePointM(id: 12, name: LangKeys.S_PHE_REAM_SHOP, description: ''),
    SalePointM(id: 13, name: LangKeys.S_KHUN_YAY_SHOP, description: ''),
  ];
}
