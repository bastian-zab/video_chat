// ignore_for_file: avoid_print

import 'package:ekyc_id_flutter/ekyc_id_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_chat/pages/entry_point/entry_point.dart';
import 'package:video_chat/pages/shared_components/my_custom_button.dart';

// ignore: must_be_immutable
class IDUploadPage extends ConsumerWidget {
  IDUploadPage({
    super.key,
  });

  // var faceDetector = FaceDetectionController();
  var documentDetector = DocumentDetectionController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.of(context).size.height;
    // User username = ref.watch(userProvider);
    // Color primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                  final ImagePicker picker = ImagePicker();

                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                  var bytes = await image?.readAsBytes();
                  print(bytes.toString());

                  if (bytes != null) {
                    print("Detecting Data");
                    await documentDetector.setWhiteList([
                      ObjectDetectionObjectType.NATIONAL_ID_0,
                    ]);
                    List<DocumentScannerResult> detections =
                        await documentDetector.detect(bytes);

                    if (detections.isNotEmpty) {
                      Navigator.push(
                              // ignore: use_build_context_synchronously
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                     const EntryPoint(),
                              ),
                            );
                          
                      print("Data Detected");
                      print(detections.toString());
                      showDialog(
                        // ignore: use_build_context_synchronously
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Image.memory(detections[0].documentImage),
                          );
                        },
                      );
                    }
                  } else {
                    print("Error detecting data");
                  }
                  /*   await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (BuildContext context) {
              return DocumentScannerView(
                onDocumentScanned: (mainSide, secondarySide) async {
                  print(mainSide.toString());
                  print(secondarySide?.toString());
                },
                options: const DocumentScannerOptions(scannableDocuments: [
                  ScannableDocument(
                    mainSide: ObjectDetectionObjectType.NATIONAL_ID_0,
                  )
                ]),
                overlayBuilder: (BuildContext context,
                    FrameStatus frameStatus,
                    DocumentSide side,
                    int countDown) {
                  return Container(
                    child: Center(
                        child: Text("$frameStatus, $side, $countDown")),
                  );
                },
              );
                        },
                      );*/
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
