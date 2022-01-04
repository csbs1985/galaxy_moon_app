import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:universe_moon_app/ui/appSvgs.dart';

class InputMessageWidget extends StatefulWidget {
  const InputMessageWidget({Key? key}) : super(key: key);

  @override
  _InputMessageWidgetState createState() => _InputMessageWidgetState();
}

class _InputMessageWidgetState extends State<InputMessageWidget> {
  final TextEditingController _sendController = TextEditingController();

  bool _isComposing = false;

  var imagePicker;
  var _image;

  void _reset() {
    _sendController.clear();
    setState(() {
      _isComposing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      color: const Color(0Xff30363D),
      child: Row(children: [
        Expanded(
          child: TextField(
            controller: _sendController,
            style: const TextStyle(fontSize: 20, color: Color(0XffC9D1D9)),
            decoration: const InputDecoration.collapsed(
              hintText: "Mensagem",
              hintStyle: TextStyle(color: Color(0XffC9D1D9)),
            ),
            onChanged: (text) {
              setState(() {
                _isComposing = text.isNotEmpty;
              });
            },
            onSubmitted: (text) {
              _reset();
            },
          ),
        ),
        _isComposing
            ? IconButton(
                icon: SvgPicture.asset(AppSvg.send),
                onPressed: () {
                  _reset();
                })
            : Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(AppSvg.image),
                    onPressed: () async {},
                  ),
                  IconButton(
                    icon: SvgPicture.asset(AppSvg.camera),
                    onPressed: () async {},
                  ),
                ],
              ),
      ]),
    );
  }
}
