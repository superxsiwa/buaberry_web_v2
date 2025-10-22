// domain/repositories/user_repo.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../authentication/data/hive/local_user_ds.dart';
import '../../domain/local_app_var.dart';
import 'local_app_var_ds.dart';
part 'local_app_var_repository.g.dart';

abstract interface class LocalAppVarRepository {
  Future<void> saveLocalAppVar(LocalAppVar localAppVar);
  Future<LocalAppVar?> getLocalAppVar();
}

@riverpod
LocalAppVarRepository localAppVarRepository(Ref ref) => _LocalAppVarRepoImpl(ref.read(localAppVarDatasourceProvider));

class _LocalAppVarRepoImpl implements LocalAppVarRepository {
  _LocalAppVarRepoImpl(this._ds);
  final LocalAppVarDatasource _ds;

  @override
  Future<void> saveLocalAppVar(LocalAppVar localAppVar) => _ds.save(localAppVar);

  @override
  Future<LocalAppVar?> getLocalAppVar() => _ds.get();
}
