import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utils/device_screen.dart';
import '../../../../data/models/todo_model.dart';
import '../../../../logic/bloc/todo/todo_bloc.dart';
import '../../../widgets/app_zoom_tap_button.dart';

class RateTodoWidget extends StatefulWidget {
  final Todo todo;

  const RateTodoWidget({super.key, required this.todo});

  @override
  State<RateTodoWidget> createState() => _RateTodoWidgetState();
}

class _RateTodoWidgetState extends State<RateTodoWidget> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    if (widget.todo.rate != 0) {
      _currentIndex = widget.todo.rate - 1;
    }
  }

  final List<Widget> _rates = [
    Lottie.asset('assets/lottie/step_1.json'),
    Lottie.asset('assets/lottie/step_2.json'),
    Lottie.asset('assets/lottie/step_3.json'),
    Lottie.asset('assets/lottie/step_4.json'),
    Lottie.asset('assets/lottie/step_5.json'),
  ];

  final List<Color> _colors = [
    const Color(0xFFC1DAFF),
    const Color(0xFFFFD569),
    const Color(0xFFB3A6FF),
    const Color(0xFFA8FFD5),
    const Color(0xFFFA7878),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      height: DeviceScreen.h(context) / 1.05,
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: _colors[_currentIndex],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Baholash',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          const Text('Tajribangiz bilan o\'rtoqlashing'),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _rates.length,
              onPageChanged: (index) => setState(() => _currentIndex = index),
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _rates[index],
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomSlider(
              value: _currentIndex / (_rates.length - 1),
              onChanged: (value) {
                int newIndex = (value * (_rates.length - 1)).round();
                _currentIndex = newIndex;
                setState(() {});
                _pageController.animateToPage(
                  newIndex,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
            child: AppZoomTapButton(
              buttonLabel: 'Baholash',
              onTap: () {
                context.read<TodoBloc>().add(
                      TodoEvent.rateTodo(
                        id: widget.todo.id,
                        rate: _currentIndex + 1,
                      ),
                    );
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const CustomSlider({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 2.0,
          trackShape: CustomTrackShape(),
          activeTrackColor: Colors.white,
          inactiveTrackColor: Colors.white.withOpacity(0.5),
          thumbShape: const RoundedRectangleThumbShape(),
          thumbColor: Colors.white,
          overlayColor: Colors.white.withAlpha(32),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 28.0),
        ),
        child: Slider(
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class RoundedRectangleThumbShape extends SliderComponentShape {
  final double enabledThumbRadius;
  final double disabledThumbRadius;

  const RoundedRectangleThumbShape({
    this.enabledThumbRadius = 10.0,
    this.disabledThumbRadius = 10.0,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled ? enabledThumbRadius : disabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final rRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: center, width: 24, height: 24),
      const Radius.circular(8),
    );

    final fillPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    canvas.drawRRect(rRect, fillPaint);
    canvas.drawRRect(rRect, borderPaint);
  }
}
