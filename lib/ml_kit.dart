// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:video_chat/pages/verification_page/check_complete.dart';

class MlKit extends StatefulWidget {
  const MlKit({super.key});

  @override
  State<MlKit> createState() => _MlKitState();
}

class _MlKitState extends State<MlKit> {
  late TextRecognizer textRecognizer;
  late ImagePicker imagePicker;

  String? pickedImagePath;
  String recognizedText = "";

  bool isRecognizing = false;

  @override
  void initState() {
    super.initState();

    textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    imagePicker = ImagePicker();
  }

  void _pickImageAndProcess({required ImageSource source}) async {
    final pickedImage = await imagePicker.pickImage(source: source);

    if (pickedImage == null) {
      return;
    }

    setState(() {
      pickedImagePath = pickedImage.path;
      isRecognizing = true;
    });

    try {
      final inputImage = InputImage.fromFilePath(pickedImage.path);
      final RecognizedText recognisedText =
          await textRecognizer.processImage(inputImage);

      recognizedText = "";

      for (TextBlock block in recognisedText.blocks) {
        for (TextLine line in block.lines) {
          recognizedText += "${line.text}\n";
        }
      }
    } catch (e) {
      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error recognizing text: $e'),
        ),
      );
    } finally {
      setState(() {
        isRecognizing = false;
      });
    }
  }

  void _chooseImageSourceModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Choose from gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImageAndProcess(source: ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Take a picture'),
                onTap: () {
                  Navigator.pop(context);
                  _pickImageAndProcess(source: ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  /*
  void _copyTextToClipboard() async {
    if (recognizedText.isNotEmpty) {
      print(recognizedText);
      DateTime? oldestDate = extractOldestDate3(recognizedText);

      if (oldestDate != null) {
        print("Oldest date: ${DateFormat('yyyy-MM-dd').format(oldestDate)}");
      } else {
        print("No valid dates found.");
      }
      await Clipboard.setData(ClipboardData(text: recognizedText));
      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Text copied to clipboard'),
        ),
      );
    }
  }

  */

  DateTime? extractOldestDate3(String text) {
    final RegExp datePattern = RegExp(
      r'\b(?:\d{1,2}[.\s]\d{1,2}[.\s]\d{2,4}|\d{4}[.\s]\d{1,2}[.\s]\d{1,2}|\d{1,2} [A-Za-z]{3,9} \d{2,4}|\b[A-Za-z]{3,9} \d{1,2}, \d{2,4})\b',
    );

    final matches = datePattern.allMatches(text);
    List<DateTime> dates = [];

    for (var match in matches) {
      String dateStr = match.group(0)!;
      DateTime? parsedDate;

      try {
        if (dateStr.contains(RegExp(r'[.\s]'))) {
          String normalizedDate = dateStr.replaceAll(RegExp(r'[.\s]'), '-');
          parsedDate = DateTime.parse(normalizedDate);
        } else {
          // Handle DD Month YYYY and Month Day, Year formats
          if (dateStr.contains(',')) {
            parsedDate = DateFormat('MMMM d, yyyy').parse(dateStr);
          } else {
            parsedDate = DateFormat('d MMMM yyyy').parse(dateStr);
          }
        }
      } catch (e) {
        // If parsing fails, continue
      }

      if (parsedDate != null) {
        dates.add(parsedDate);
      }
    }

    // Return the oldest date if available
    if (dates.isNotEmpty) {
      return dates.reduce((a, b) => a.isBefore(b) ? a : b);
    }
    return null; // Return null if no valid dates found
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            children: <Widget>[
              const Center(
                  child: Text(
                    "Age Verification",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF363f93),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12),
                child: ImagePreview(imagePath: pickedImagePath),
              ),
              ElevatedButton(
                onPressed: isRecognizing ? null : _chooseImageSourceModal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Pick an image'),
                    if (isRecognizing) ...[
                      const SizedBox(width: 20),
                      const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 1.5,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              //const Divider(),
              const Padding(
                padding: EdgeInsets.only(
                  left: 6,
                  right: 6,
                  bottom: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /* Text(
                      "Recognized Text",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.copy,
                        size: 16,
                      ),
                      onPressed: _copyTextToClipboard,
                    ),*/
                  ],
                ),
              ),
              if (!isRecognizing) ...[
                Expanded(
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(12),
                      child: recognizedText.isEmpty
                          ? const Text("No Valid Image Found")
                          : const CheckComplete(),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePreview extends StatelessWidget {
  const ImagePreview({
    super.key,
    required this.imagePath,
  });

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 203, 203, 203),
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: imagePath == null
          ? const Center(
              child: Text(
                "No image selected",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Image.file(
              File(imagePath!),
              fit: BoxFit.contain,
            ),
    );
  }
}
