import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../widgets/authorizedSignatories_custom_card.dart';

class AuthorizedsignatoriesView extends StatelessWidget {
  const AuthorizedsignatoriesView({super.key});

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
                  Text("المفوضون بالتوقيع", style: AppStyles.textStyleBold11),
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
              AuthorizedsignatoriesCustomCard(
                branchManagerName: "بهاء الدين قاسم",
                validity: "قانوني",
                signatureValidity: "بهاء الدين قاسم",
              ),
              const SizedBox(height: 20),
              AuthorizedsignatoriesCustomCard(
                branchManagerName: "بهاء الدين قاسم",
                validity: "قانوني",
                signatureValidity: "بهاء الدين قاسم",
              ),
              const SizedBox(height: 20),
              AuthorizedsignatoriesCustomCard(
                branchManagerName: "بهاء الدين قاسم",
                validity: "قانوني",
                signatureValidity: "بهاء الدين قاسم",
              ),
              const SizedBox(height: 20),
              AuthorizedsignatoriesCustomCard(
                branchManagerName: "بهاء الدين قاسم",
                validity: "قانوني",
                signatureValidity: "بهاء الدين قاسم",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
