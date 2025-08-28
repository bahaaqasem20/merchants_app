import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/companyService_custom_card.dart';

import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../widgets/add_service_modal.dart';

class CompanyservicesView extends StatefulWidget {
  const CompanyservicesView({super.key});

  @override
  State<CompanyservicesView> createState() => _CompanyservicesViewState();
}

class _CompanyservicesViewState extends State<CompanyservicesView> {
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
                  Text("قائمة خدمات الشركة", style: AppStyles.textStyleBold11),
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
              CompanyserviceCustomCard(serviceName: "برمجة تطبيقات", serviceDate: "20.10"),
              SizedBox(height: 20),
              CompanyserviceCustomCard(serviceName: "برمجة تطبيقات", serviceDate: "20.10"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => const AddServiceModal(),
          );
        },
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: AppColors.primaryLight),
      ),
    );
  }
}
