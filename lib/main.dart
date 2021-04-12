import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart' show DateFormat;
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(PickerSelectedDate());

class PickerSelectedDate extends StatefulWidget {
  @override
  _SelectedDateState createState() => _SelectedDateState();
}

class _SelectedDateState extends State<PickerSelectedDate> {
  final DateRangePickerController _controller = DateRangePickerController();
  String _date = DateFormat('dd, MMMM yyyy').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(height: 50, child: Text('SelectedDate:' '$_date')),
              Card(
                margin: const EdgeInsets.fromLTRB(40, 100, 40, 100),
                child: SfDateRangePicker(
                  controller: _controller,
                  initialSelectedDate: DateTime.now(),
                  view: DateRangePickerView.month,
                  onSelectionChanged: selectionChanged,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectionChanged(DateRangePickerSelectionChangedArgs args) {
    SchedulerBinding.instance!.addPostFrameCallback((duration) {
      setState(() {
        _date = DateFormat('dd, MMMM yyyy').format(args.value).toString();
      });
    });
  }
}
