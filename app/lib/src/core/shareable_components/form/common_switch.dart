import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/constance.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CommonSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CommonSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CommonSwitchState createState() => _CommonSwitchState();
}

class _CommonSwitchState extends State<CommonSwitch>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 60));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Stack(
            children: [
              Container(
                width: 45.0,
                height: 28.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: AppTheme.getColor(ColorType.gray, Constance.isLight)
                      .withAlpha(30),
                ),
                // child:
              ),
              Positioned(
                right: (_animationController!.isCompleted) ? 0 : 20,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Center(
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (_animationController!.isCompleted)
                              ? AppTheme.getColor(
                                  ColorType.success, Constance.isLight)
                              : AppTheme.getColor(
                                  ColorType.white, Constance.isLight),
                          boxShadow: (_animationController!.isCompleted)
                              ? [Styles().getSwitchBoxShadow()]
                              : []),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
