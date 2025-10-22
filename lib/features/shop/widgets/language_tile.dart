import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../../../../shared/constants/constants.dart';
import '../../../shared/utils/logger.dart';

class LanguageTile extends ConsumerWidget {
  const LanguageTile({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: <Widget>[
        Text(
          context.tr(LangKeys.TOGGLE_LANGUAGE),
          style: Theme.of(context).textTheme.titleMedium!.apply(fontWeightDelta: 2),
        ),
        Center(
          child: Switch(
            value: context.locale == const Locale('th'),
            onChanged: (bool newValue) async {
              await context.setLocale(newValue ? const Locale('th') : const Locale('en'));
              logger.d('Switch changed : $newValue');
              // await ref.read(localAppVarRepository).saveLocalAppVar(localAppVar).catchError((dynamic error) {
              //   Logger().e('Failed to cache user: $error');
              // });
            },
          ),
        ),
      ],
    );
    // return SwitchListTile(
    //   onChanged: (bool newValue) {
    //     /// Example: Change locale
    //     /// The initial locale is automatically determined by the library.
    //     /// Changing the locale like this will persist the selected locale.
    //     context.setLocale(newValue ? const Locale('th') : const Locale('en'));
    //   },
    //   shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
    //   value: context.locale == const Locale('th'),
    //   title: Text(
    //     context.tr(LangKeys.TOGGLE_LANGUAGE),
    //     style: Theme.of(context).textTheme.titleMedium!.apply(fontWeightDelta: 2),
    //   ),
    // );
  }
}
