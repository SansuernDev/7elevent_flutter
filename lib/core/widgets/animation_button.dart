
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



class AnimatedButton extends HookConsumerWidget {
  final VoidCallback onTap;
  final Widget child;
  const AnimatedButton({super.key, required this.onTap, required this.child});


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final _scale = useState(1.0);

    void _onTapDown(TapDownDetails details) {
        _scale.value = 0.9; // ย่อเล็กลงเมื่อกด
    }

    void _onTapUp(TapUpDetails details) {
        _scale.value = 1.0; // กลับไปขนาดปกติเมื่อปล่อย
      onTap();
    }


    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () {
        _scale.value = 1.0;
      },
      child: AnimatedScale(
        scale: _scale.value,
        duration: const Duration(milliseconds: 100),
        child: child,
      ),
    );
  }
}