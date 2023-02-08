import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

// this is a custom Widget
class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? childCard;
  final void Function()? onPress;

  const ReusableCard({super.key, required this.colour, this.childCard, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: childCard,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final void Function()? onPress;

  const RoundIconButton({super.key, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      child: Icon(icon, color: Colors.white,),
    );
  }
}

class CalculateButton extends StatelessWidget {

  final void Function()? onTap;
  final String? buttonName;

  const CalculateButton({super.key, required this.onTap, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.redAccent,
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.only(top: 10),
        // padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            buttonName!,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}