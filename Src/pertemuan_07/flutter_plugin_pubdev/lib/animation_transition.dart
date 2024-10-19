import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_transition/page_transition.dart';

// Fungsi untuk menampilkan animasi loading
Widget buildLoadingAnimation() {
  return Center(
    child: LoadingAnimationWidget.staggeredDotsWave(
      color: Colors.blue,
      size: 50,
    ),
  );
}

// Fungsi untuk navigasi dengan transisi animasi
void navigateWithTransition(BuildContext context, Widget nextPage) {
  Navigator.push(
    context,
    PageTransition(
      type: PageTransitionType.fade,
      child: nextPage,
    ),
  );
}
