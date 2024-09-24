// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_chat/ml_kit.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';
class IDUploadPage extends ConsumerWidget {
  const IDUploadPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
  

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 35),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: height * 0.03),
              const Center(
                child: Text(
                  "Age Verification",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF363f93),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "Notes",
                style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "1.Please provide a clear Image of your ID to help verify your age",
                style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "2.This Image is only required for verification and will be discarded afterwards",
                style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "3. By continuing, you understand and agree to this.",
                style: TextStyle(fontSize: 20, color: Color(0xFF363f93)),
              ),
              SizedBox(height: height * 0.02),
              const Text(
                "4.Your may be required to give the app permission to access your Images",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF363f93),
                ),
              ),
              SizedBox(height: height * 0.06),
              Center(
                child: MyCustomButton(
                  text: "Pick An Image",
                  onpressed: () async {
                   
/*
                    ExtractedDataFromId? extractedDataFromId;
                    extractedDataFromId =
                        await EkycServices().openImageScanner(keyWordData);
                    print(extractedDataFromId);*/

                    Navigator.push(
                      // ignore: use_build_context_synchronously
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const MlKit(),
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
