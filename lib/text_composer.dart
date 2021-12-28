import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TextComposer extends StatefulWidget {
  TextComposer(this.sendMessage);

  final Function({String? text, File? imgFile}) sendMessage;

  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {
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
  void initState() {
    super.initState();
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
              widget.sendMessage(text: text);
              _reset();
            },
          ),
        ),
        _isComposing
            ? IconButton(
                icon: const Icon(
                  Icons.send,
                ),
                onPressed: () {
                  widget.sendMessage(text: _sendController.text);
                  _reset();
                })
            : IconButton(
                icon: const Icon(
                  Icons.photo_camera,
                ),
                onPressed: () async {
                  XFile image =
                      await imagePicker.pickImage(source: ImageSource.camera);

                  setState(() {
                    _image = File(image.path);
                  });

                  if (_image == null) return;
                  widget.sendMessage(imgFile: _image);
                },
              ),
      ]),
    );
  }
}
