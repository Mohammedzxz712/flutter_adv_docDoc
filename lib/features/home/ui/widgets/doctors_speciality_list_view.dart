import 'package:doctor_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset(
                    Assets.svgGeneralSpeciality,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpace(8),
                Text(
                  'Omar',
                  style: TextStyles.font12DarkBlueRegular,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}