import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderCustom1 extends StatefulWidget {
  final controller;

  const SliderCustom1({super.key, this.controller});

  @override
  State<SliderCustom1> createState() {
    return _SliderCustom1State();
  }
}

class _SliderCustom1State extends State<SliderCustom1> {

  RangeValues values_slider = RangeValues(0,10);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Slider(
    //   min: 0,
    //   max: 100,
    //   value: widget.controller.sliderValue.value,
    //   onChanged: (value) {
    //     print(value);
    //     setState(
    //       () {
    //         widget.controller.updateSliderValue(value);
    //       },
    //     );
    //   },
    // );

    return RangeSlider(
      min: 0.0, // Ensure these values are correct
      max: 100.0,
      values: RangeValues(widget.controller.rxLowerValue.value, widget.controller.rxUpperValue.value),
      divisions: 5,
      labels: RangeLabels(
        widget.controller.rxLowerValue.value.toString(),
        widget.controller.rxUpperValue.value.toString(),
      ),
      onChanged: (RangeValues values) {
        setState(
          () {
            //widget.controller.rxValues.value=values;
            widget.controller.updateRangeValues(values.start, values.end);
          },
        );
      },
    );
  }
}
