
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svg/doc_logo_back.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              stops: const [.14, .4],
            ),
          ),
          child: Image.asset('assets/images/doctor.png'),
        ),
        Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\n Appointment App',
              textAlign: TextAlign.center,
              style: TextStyles.font32BlueBold.copyWith(height: 1.4),
            )),
      ],
    );
  }
}
