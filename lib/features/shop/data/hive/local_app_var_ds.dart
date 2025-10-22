import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/local_app_var.dart';
import 'shop_hive_box_providers.dart';

part 'local_app_var_ds.g.dart';

@riverpod
LocalAppVarDatasource localAppVarDatasource(Ref ref) => LocalAppVarDatasource._(ref);

class LocalAppVarDatasource {
  LocalAppVarDatasource._(this._ref);
  final Ref _ref;

  Future<Box<LocalAppVar>> _box() async => _ref.watch(localAppVarProvider.future); // defined globally
  Future<void> save(LocalAppVar localAppVar) async => (await _box()).put('localAppVar', localAppVar);
  Future<LocalAppVar?> get() async => (await _box()).get('localAppVar');
}
