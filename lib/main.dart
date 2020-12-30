import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(Background_Image());

class Background_Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SafeArea(
          child: Card(
            margin: const EdgeInsets.fromLTRB(50, 150, 50, 150),
            child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("icons/image.png"),
                        fit: BoxFit.cover)),
                child: SfDateRangePicker(
                  headerStyle: DateRangePickerHeaderStyle(
                      textStyle: TextStyle(color: Colors.white)),
                  monthViewSettings: DateRangePickerMonthViewSettings(
                      viewHeaderStyle: DateRangePickerViewHeaderStyle(
                          textStyle: TextStyle(color: Colors.white))),
                  backgroundColor: Colors.transparent,
                  monthCellStyle: DateRangePickerMonthCellStyle(
                      textStyle: TextStyle(color: Colors.white)),
                  yearCellStyle: DateRangePickerYearCellStyle(
                      textStyle: TextStyle(color: Colors.white),
                      leadingDatesTextStyle: TextStyle(color: Colors.white),
                      disabledDatesTextStyle: TextStyle(color: Colors.white)),
                )),
          ),
        )));
  }
}
