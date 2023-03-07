import 'package:flutter/material.dart';

showAppModalBottomSheet({
  required BuildContext context,
  required ScrollableWidgetBuilder builder,
  double initialChildSize = 0.55,
  double minChildSize = 0.3,
  double maxChildSize = 0.8,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
            maxChildSize: maxChildSize,
            minChildSize: minChildSize,
            initialChildSize: initialChildSize,
            builder: builder),
      ),
    ),
  );
}
