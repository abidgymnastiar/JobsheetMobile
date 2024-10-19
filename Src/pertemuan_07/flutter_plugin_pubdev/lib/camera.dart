import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool _isProcessing = false;
  Uint8List? _imageData;  // Menyimpan data gambar yang diambil

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = initializeCamera();
  }

  Future<void> initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.high,
    );
    await _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera OCR'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Stack(
              children: [
                // Jika ada gambar yang diambil, tampilkan, jika tidak, tampilkan kamera preview
                _imageData != null
                    ? Stack(
                        children: [
                          Center(child: Image.memory(_imageData!)),  // Tampilkan gambar dari memori
                          Positioned(
                            top: 20,
                            right: 20,
                            child: IconButton(
                              icon: Icon(Icons.replay, color: Colors.white, size: 30),
                              onPressed: () {
                                setState(() {
                                  _imageData = null;  // Reset ke mode kamera
                                });
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 20,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();  // Kembali ke halaman sebelumnya
                              },
                              child: Text('Back'),
                            ),
                          ),
                        ],
                      )
                    : CameraPreview(_controller),
                if (_isProcessing) buildLoadingAnimation(),  // Animasi loading saat proses
                Positioned(
                  bottom: 30,
                  right: 20,
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        setState(() {
                          _isProcessing = true;  // Tampilkan animasi loading
                        });

                        await _initializeControllerFuture;

                        // Ambil gambar
                        final image = await _controller.takePicture();

                        // Baca gambar sebagai bytes dan simpan ke _imageData
                        final bytes = await image.readAsBytes();

                        setState(() {
                          _imageData = bytes;  // Simpan data gambar ke memori
                          _isProcessing = false;  // Hentikan animasi loading
                        });
                      } catch (e) {
                        setState(() {
                          _isProcessing = false;  // Hentikan animasi loading jika terjadi kesalahan
                        });
                        print(e);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Terjadi kesalahan: $e')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(20),  // Warna tombol
                    ),
                    child: Icon(Icons.camera_alt, size: 40),
                  ),
                ),
              ],
            );
          } else {
            return buildLoadingAnimation();  // Animasi loading saat kamera diinisialisasi
          }
        },
      ),
    );
  }

  Widget buildLoadingAnimation() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
