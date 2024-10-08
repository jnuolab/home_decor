import 'package:flutter/material.dart';
import 'package:home_decor/common/app_colors.dart';

class CustomCardContainer extends StatelessWidget {
  const CustomCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      // height: 50,
      color: AppColors.mainColor.withOpacity(0.2),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Kathryn Murphy',
            style: TextStyle(
              fontSize: 15,
              color: AppColors.mainColor,
            ),
          ),
          Text(
            '2464 Royal Ln. Mesa, New Jersey 45463',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.secondColor,
            ),
          ),
          Text(
            '(302) 555-0107 - (406) 555-0120',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.secondColor,
            ),
          ),
        ],
      ),
    );
  }
}
