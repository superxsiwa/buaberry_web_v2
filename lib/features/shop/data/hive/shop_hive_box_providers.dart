import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/local_app_var.dart';

part 'shop_hive_box_providers.g.dart';

@riverpod
Future<Box<LocalAppVar>> localAppVar(Ref ref) async {
  await Hive.initFlutter(); // hive_ce_flutter
  return Hive.openBox<LocalAppVar>(
    'localAppVar',
  );
}
