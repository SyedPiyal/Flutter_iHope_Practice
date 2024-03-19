import 'package:flutter/material.dart';

class MedicalRecord extends StatefulWidget {
  const MedicalRecord({super.key});

  @override
  State<MedicalRecord> createState() => _MedicalRecordState();
}

class _MedicalRecordState extends State<MedicalRecord> {
  static List<Color> colors = [
    Colors.red,
    Colors.teal,
    Colors.purple,
    Colors.orange
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 217, 241),

      //==============================
      // App bar
      //==============================

      appBar: AppBar(
        backgroundColor: Colors.blueAccent, // Setting the background color of the app bar.
        title: const Text( // Setting the title of the app bar.
          'Tickets',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true, // Aligning the title to the center.
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red, // Setting the background color of the container.
              height: MediaQuery.of(context).size.height * 0.25, // Setting the height of the container.
              width: double.infinity, // Setting the width of the container to occupy the available space.
              child: Stack(children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.blueAccent, // Setting the background color of the left side of the container.
                        //for changing ticket color
                        /*colors[index],*/
                        child: Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                '#${index + 1}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Colors.white, // Setting the background color of the right side of the container.
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Title #${index + 1}', // Displaying the title.
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Expanded(
                                child: Row(children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    width:
                                    MediaQuery.of(context).size.width * 0.3,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Material(
                                            elevation: 2,

                                            //===========-> container to show image <-===========//
                                            child: Container(
                                              color: Colors.grey.shade200, // Setting the background color of the image container.
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              '00 month 2023 00:00',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          const Expanded(
                                            child: Text(
                                              'Destination venue',
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          ElevatedButton.icon(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.white,
                                                  shape: const StadiumBorder(
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.blue),
                                                  )),
                                              icon: const Icon(
                                                  Icons.check_circle),
                                              label: Text(
                                                'Buy Tickets'.toUpperCase(),
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ))
                                        ]),
                                  ),
                                ]),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                CustomPaint(
                  painter: SideCutsDesign(), // Drawing a custom design on the side of the container.
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                  ),
                ),
                CustomPaint(
                  painter: DottedInitialPath(), // Drawing a dotted path at the beginning of the container.
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                  ),
                ),
                CustomPaint(
                  painter: DottedMiddlePath(), // Drawing a dotted path in the middle of the container.
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.25,
                    width: double.infinity,
                  ),
                ),
              ]),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            height: 15,
          ),
          itemCount: colors.length),
    );
  }
}

// Custom painter to draw dotted path in the middle of the container.
class DottedMiddlePath extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 3;
    double dashSpace = 4;
    double startY = 10;
    final paint = Paint()
      ..color = const Color.fromARGB(255, 170, 217, 241)
      ..strokeWidth = 1;

    while (startY < size.height - 10) {
      canvas.drawCircle(Offset(size.width / 5, startY), 2, paint); // Drawing circles to create a dotted line.
      startY += dashWidth + dashSpace; // Adjusting the position for the next circle.
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint as the drawing is static.
  }
}

// Custom painter to draw dotted path at the beginning of the container.
class DottedInitialPath extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 3;
    double dashSpace = 4;
    double startY = 10;
    final paint = Paint()
      ..color = const Color.fromARGB(255, 170, 217, 241)
      ..strokeWidth = 1;

    while (startY < size.height - 10) {
      canvas.drawCircle(Offset(0, startY), 2, paint); // Drawing circles to create a dotted line.
      startY += dashWidth + dashSpace; // Adjusting the position for the next circle.
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint as the drawing is static.
  }
}


class SideCutsDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Extracting the height and width of the provided size.
    var h = size.height;
    var w = size.width;

    // Drawing arcs to create a decorative design on the sides of the container.
    canvas.drawArc(
        Rect.fromCircle(center: Offset(0, h / 2), radius: 18), // Left side arc
        0,
        10,
        false,
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color.fromARGB(255, 170, 217, 241)); // Filling with a specific color
    canvas.drawArc(
        Rect.fromCircle(center: Offset(w, h / 2), radius: 18), // Right side arc
        0,
        10,
        false,
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color.fromARGB(255, 170, 217, 241)); // Filling with a specific color
    canvas.drawArc(
        Rect.fromCircle(center: Offset(w / 5, h), radius: 7), // Bottom left arc
        0,
        10,
        false,
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color.fromARGB(255, 170, 217, 241)); // Filling with a specific color
    canvas.drawArc(
        Rect.fromCircle(center: Offset(w / 5, 0), radius: 7), // Top left arc
        0,
        10,
        false,
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color.fromARGB(255, 170, 217, 241)); // Filling with a specific color
    canvas.drawArc(
        Rect.fromCircle(center: Offset(0, h), radius: 7), // Bottom right arc
        0,
        10,
        false,
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color.fromARGB(255, 170, 217, 241)); // Filling with a specific color
    canvas.drawArc(
        Rect.fromCircle(center: const Offset(0, 0), radius: 7), // Top right arc
        0,
        10,
        false,
        Paint()
          ..style = PaintingStyle.fill
          ..color = const Color.fromARGB(255, 170, 217, 241)); // Filling with a specific color
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // No need to repaint as the drawing is static.
  }
}

