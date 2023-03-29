import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(const BackgroundImagePicker());

class BackgroundImagePicker extends StatelessWidget {
  const BackgroundImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
              child: Card(
                margin: const EdgeInsets.fromLTRB(50, 150, 50, 150),
                child: Container(
                    constraints: const BoxConstraints.expand(),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("icons/image.png"),
                            fit: BoxFit.cover)),
                    child: SfDateRangePicker(
                      headerStyle: const DateRangePickerHeaderStyle(
                          textStyle: TextStyle(color: Colors.white)),
                      monthViewSettings: const DateRangePickerMonthViewSettings(
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              textStyle: TextStyle(color: Colors.white))),
                      backgroundColor: Colors.transparent,
                      monthCellStyle: const DateRangePickerMonthCellStyle(
                          textStyle: TextStyle(color: Colors.white)),
                      yearCellStyle: const DateRangePickerYearCellStyle(
                          textStyle: TextStyle(color: Colors.white),
                          leadingDatesTextStyle: TextStyle(color: Colors.white),
                          disabledDatesTextStyle: TextStyle(color: Colors.white)),
                    )),
              ),
            )));
  }
}