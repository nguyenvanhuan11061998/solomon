import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_application/data/dto/class/class_dto.dart';
import 'package:flutter_application/lib.dart';

import '../../../../../utils/color.dart';

class ItemClassWidget extends StatefulWidget {
  final int? index;
  final ClassDto classModel;

  const ItemClassWidget(
      {Key? key, this.index, required this.classModel})
      : super(key: key);

  @override
  _ItemClassWidgetState createState() => _ItemClassWidgetState();
}

class _ItemClassWidgetState extends State<ItemClassWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.black.withOpacity(0.8),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${(widget.index??0) + 1}',
                    style: Theme.of(context).textTheme.bodyText1),
                const Icon(
                  Icons.delete_forever_sharp,
                  size: 20,
                  color: ColorConstants.blackOpacity60,
                ),
              ],
            ),
            kSpacingHeight12,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppTextFormField(
                hint: 'Class name ${(widget.index??0) + 1}',
                initialValue: widget.classModel.name??'',
                backgroundColor: ColorConstants.greyBorderColor,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter class name';
                  }
                  widget.classModel.name = value.trim();
                  return null;
                },
              ),
            ),
            kSpacingHeight12,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AppTextFormField(
                hint: 'Color',
                initialValue: widget.classModel.name??'',
                backgroundColor: ColorConstants.greyBorderColor,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter class color';
                  }
                  widget.classModel.color = value.trim();
                  return null;
                },
              ),
            ),
            kSpacingHeight16
          ],
        ),
      ),
    );
  }
}
