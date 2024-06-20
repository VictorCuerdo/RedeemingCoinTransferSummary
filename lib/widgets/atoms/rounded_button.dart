import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RoundedButton extends StatefulWidget {
  final String label;
  final Function? onPressed;

  const RoundedButton(
      {super.key, required this.label, required this.onPressed});

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: () {
          if (widget.onPressed != null) {
            widget.onPressed!();
          }
        },
        onTapDown: (_) {
          setState(() {
            isPressed = true;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = false;
          });
        },
        onTapUp: (_) {
          setState(() {
            isPressed = false;
          });
        },
        splashColor: Colors.green.withOpacity(0.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16.0),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xA301FF).withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 34,
                offset: const Offset(0, 2),
              ),
            ],
            gradient: LinearGradient(
              colors: [
                Color(0x7F00FF).withOpacity(0.7),
                Color(0xDF00FD).withOpacity(0.7),
              ],
              begin: Alignment(-1.0, 0.0),
              end: Alignment(1.0, 0.0),
              stops: [-0.1708, 0.9448],
            ),
          ),
          child: ElevatedButton(
            onPressed:
                widget.onPressed != null ? () => widget.onPressed!() : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              minimumSize: const Size(double.infinity, 50),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                ),
              ),
              elevation: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 8),
                AutoSizeText(
                  widget.label,
                  style: const TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  minFontSize: 11,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
