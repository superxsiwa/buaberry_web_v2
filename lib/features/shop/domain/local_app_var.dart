import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_app_var.freezed.dart';
part 'local_app_var.g.dart';

@freezed
abstract class LocalAppVar with _$LocalAppVar {
  const factory LocalAppVar({
    required bool isThLanguage,
  }) = _LocalAppVar;

  factory LocalAppVar.fromJson(Map<String, dynamic> json) => _$LocalAppVarFromJson(json);
}
