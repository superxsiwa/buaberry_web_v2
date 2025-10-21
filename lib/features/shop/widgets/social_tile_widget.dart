import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../shared/shared.dart';

class SocialTile extends StatelessWidget {
  const SocialTile({required this.title, required this.url, required this.leadingIcon, this.leadingImageIcon, super.key});
  final String title;
  final Uri url;
  final Icon? leadingIcon;
  final ImageIcon? leadingImageIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        enableFeedback: true,
        title: Text(title,
            style: context.textTheme.titleMedium!.copyWith(
              color: context.colorScheme.onSurface,
            )),
        contentPadding: const EdgeInsets.all(4),
        trailing: Icon(
          Ionicons.arrow_forward,
          color: context.colorScheme.primary,
        ),
        tileColor: context.colorScheme.surface,
        selectedTileColor: context.colorScheme.onSurface,
        leading: Container(
          child: leadingIcon ?? leadingImageIcon,
        ),
        onTap: () => openUrl(url),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
