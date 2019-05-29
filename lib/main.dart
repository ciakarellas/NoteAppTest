import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './state/stateProvider.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      builder: (context) => NoteState(),
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: Notes(),
          ),
        ),
      ),
    );
  }
}



class Notes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // var noteState = Provider.of<NoteState>(context);
    final _controller = new TextEditingController();

    var note = Provider.of<NoteState>(context);
    
    _controller.value = _controller.value.copyWith(
      text: note.note,
      selection: TextSelection(baseOffset: note.note.length, extentOffset: note.note.length),
      composing: TextRange.empty,
    );
    
    return TextField(
        controller: _controller,
    );
  }
} 