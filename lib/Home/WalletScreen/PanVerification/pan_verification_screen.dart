import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:probo/CustomWidget/Custom_input_text_field.dart';
import 'package:probo/CustomWidget/custom_buttons.dart';
import 'package:probo/CustomWidget/dashed_border_container.dart';
import 'package:probo/utils/images.dart';

import '../../../CustomWidget/customtext.dart';

class PanVerificationScreen extends StatefulWidget {
  PanVerificationScreen({super.key});

  @override
  State<PanVerificationScreen> createState() => _PanVerificationScreenState();
}

class _PanVerificationScreenState extends State<PanVerificationScreen> {
  final TextEditingController dateController = TextEditingController();
  XFile? selectedImage; // Store the selected image

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  void _selectDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
      setState(() {
        dateController.text = formattedDate;
      });
    }
  }

  void _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        selectedImage = image;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(
          child: Rubik(
            text: 'Verify',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Get.theme.scaffoldBackgroundColor,
          ),
          onPressed: () {},
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: AppBar(
            title: Rubik(
              text: 'Pan Verification',
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_rounded,
                  size: 24, color: Get.theme.secondaryHeaderColor),
              onPressed: () {
                Get.back();
              },
            ),
            backgroundColor: Get.theme.scaffoldBackgroundColor,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Poppins(
            text: 'Name',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Get.theme.secondaryHeaderColor,
          ),
          const SizedBox(height: 8),
          CustomTextField(hintText: 'Enter Name'),
          const SizedBox(height: 20),
          Poppins(
            text: 'Pan Number',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Get.theme.secondaryHeaderColor,
          ),
          const SizedBox(height: 8),
          CustomTextField(hintText: 'Enter Pan Number'),
          const SizedBox(height: 20),
          Poppins(
            text: 'Date of Birth',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Get.theme.secondaryHeaderColor,
          ),
          const SizedBox(height: 8),
          CustomTextField(
            hintText: 'dd/mm/yyyy',
            suffixIcon: Icons.date_range_rounded,
            onSuffixTap: _selectDate,
            controller: dateController,
          ),
          const SizedBox(height: 40),
          InkWell(
            onTap: _pickImage,
            child: DashedBorderContainer(
              child: Column(
                children: [
                  if (selectedImage != null)
                    Image.file(
                      File(selectedImage!.path),
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )
                  else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Rubik(
                          text: 'Upload Pan Image',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Get.theme.primaryColor,
                        ),
                        const SizedBox(width: 10),
                        Image.asset(Images.doc, height: 24, width: 24),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
