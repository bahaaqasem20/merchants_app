import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/roomServiceRequect_custom_card.dart';
import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';

class RoomservicerequestView extends StatefulWidget {
  const RoomservicerequestView({super.key});

  @override
  State<RoomservicerequestView> createState() => _RoomservicerequestViewState();
}

class _RoomservicerequestViewState extends State<RoomservicerequestView> {
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
                  Text("طلب خدمات الغرفة التجارية", style: AppStyles.textStyleBold11),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("الخدمات المقدمة من الغرفة التجارية", style: AppStyles.textStyleBold16, textAlign: TextAlign.right),
              const SizedBox(height: 30),
              RoomservicerequectCustomCard(serviceName: "اسم الخدمة", servicePrice: "300", time: "أسبوع"),
              const SizedBox(height: 20),
              RoomservicerequectCustomCard(serviceName: "اسم الخدمة", servicePrice: "300", time: "أسبوع"),

            ],
          ),
        ),
      ),
    );
  }
}
