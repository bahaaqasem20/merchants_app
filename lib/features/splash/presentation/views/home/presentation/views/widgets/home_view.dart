import 'package:flutter/material.dart';
import 'package:merchants_training/core/utils/app_colors.dart';
import 'package:merchants_training/core/utils/app_styles.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/authorizedSignatories_custom_card.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/branches_custom_card.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/partners_custom_card.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/custom_section.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/welcome_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(230),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary,
          centerTitle: true,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/category_icon.png", height: 28),
                      Text("الرئيسية", style: AppStyles.textStyleBold11),
                      const SizedBox(width: 28),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: WelcomeCard(name: "Isnad"),
                  ),
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
                CustomSection(title: "الشركاء"),
                const SizedBox(height: 20),
                PartnersCustomCard(partnerName: "محمد أحمد", position: "رئيس مجلس الادارة", sharePercentage: "50%"),
                const SizedBox(height: 30),
                CustomSection(title: "الفروع"),
                const SizedBox(height: 20),
                BranchesCustomCard(companyName: "Top Tech", status: "نشطة", managerName: "محمد توفيق"),
                const SizedBox(height: 30),
                CustomSection(title: "المفوضون بالتوقيع"),
                const SizedBox(height: 20),

                AuthorizedsignatoriesCustomCard(branchManagerName: "بهاء الدين قاسم", validity: "قانوني", signatureValidity: "بهاء الدين قاسم")


              ],
          ),
        ),
      ),
    );
  }
}
