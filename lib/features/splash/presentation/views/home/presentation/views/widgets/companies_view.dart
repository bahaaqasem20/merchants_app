import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/partners_custom_card.dart';
import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary,
          centerTitle: true,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Text("الشركات", style: AppStyles.textStyleBold11),
                  const SizedBox(width: 28),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PartnersCustomCard(
                partnerName: "محمد أحمد",
                position: "رئيس مجلس الادارة",
                sharePercentage: "50%",
              ),
              const SizedBox(height: 20),
              PartnersCustomCard(
                partnerName: "محمد أحمد",
                position: "رئيس مجلس الادارة",
                sharePercentage: "50%",
              ),
              const SizedBox(height: 20),
              PartnersCustomCard(
                partnerName: "محمد أحمد",
                position: "رئيس مجلس الادارة",
                sharePercentage: "50%",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
