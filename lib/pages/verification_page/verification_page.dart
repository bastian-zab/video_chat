// ignore_for_file: avoid_print

import 'package:ekyc_id_flutter/ekyc_id_flutter.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:permission_handler/permission_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   //var faceDetector = FaceDetectionController();
  //var documentDetector = DocumentDetectionController();

  @override
  void initState() {
    super.initState();
    //documentDetector.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            /*
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
            }*/
               await showModalBottomSheet(
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
                    // ignore: avoid_unnecessary_containers
                    return Container(
                      child: Center(
                          child: Text("$frameStatus, $side, $countDown")),
                    );
                  },
                );
              },
            );
          },
          child: const Text("Start KYC"),
        ),
      ),
    );
  }
}
