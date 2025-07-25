import 'package:flutter/material.dart';

void main() => runApp(RamImageApp());

class RamImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ram Images'),
          centerTitle: true,
          backgroundColor: Colors.red[800],
        ),
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Local Image (Ram)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/Ram.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Network Image (Ram)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(20),
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/91X0KR5-QrL.jpg',
                    fit: BoxFit.cover,
                    loadingBuilder: (
                      context,
                      child,
                      progress,
                    ) {
                      if (progress == null)
                        return child;
                      return Center(
                        child:
                            CircularProgressIndicator(),
                      );
                    },
                    errorBuilder:
                        (
                          context,
                          error,
                          stackTrace,
                        ) => Center(
                          child: Text(
                            "Failed to load image",
                          ),
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
