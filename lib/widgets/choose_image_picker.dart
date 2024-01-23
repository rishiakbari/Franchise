import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

import 'custom_circle_icon_button.dart';

class ChooseImagePicker extends StatelessWidget {
  const ChooseImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCircleIconButton(
                icon: TablerIcons.camera_filled,
                scale: 2,
                onPressed: () => Navigator.of(context).pop('camera'),
              ),
              const SizedBox(
                width: 50.0,
              ),
              CustomCircleIconButton(
                icon: TablerIcons.photo_filled,
                scale: 2,
                onPressed: () => Navigator.of(context).pop('gallery'),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
