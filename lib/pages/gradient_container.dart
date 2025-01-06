import 'package:app_lempar_dadu/controller/roll_dice_controller.dart';
import 'package:flutter/material.dart';

final startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class AppLemparDadu extends StatelessWidget {
  const AppLemparDadu(this.warna1, this.warna2, this.warna3, {super.key});

  final Color warna1;
  final Color warna2;
  final Color warna3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            warna1,
            warna2,
            warna3,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: RollDiceController(),
    );
  }
}

// class AppLemparDadu extends StatelessWidget {
//   const AppLemparDadu(this.warna, {super.key});

//   final List<Color> warna;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: warna,
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: StyledText('Fadli'));
//   }
// }

// class AppLemparDadu extends StatelessWidget {
//   const AppLemparDadu({super.key, required this.warna});

//   final List<Color> warna;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: warna,
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: StyledText('Fadli'));
//   }
// }
