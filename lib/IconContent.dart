import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});

  final FaIconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(icon, size: 85.0),
        const SizedBox(height: 15),
        Text(
          label,
          style: const TextStyle(fontSize: 15.0, color: inactiveTextColor),
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.onPressed, // 1. Add onPressed parameter
  });

  final IconData icon;
  final VoidCallback onPressed; // 2. Declare property

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      constraints: const BoxConstraints.tightFor(width: 48.0, height: 48.0),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      onPressed: onPressed, // 3. Pass to RawMaterialButton
    );
  }
}
