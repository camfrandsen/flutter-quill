import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Used to configure the dialog's look and feel.
class QuillDialogTheme with Diagnosticable {
  const QuillDialogTheme({
    this.labelTextStyle,
    this.inputTextStyle,
    this.dialogBackgroundColor,
    this.shape,
    this.buttonStyle,
    this.linkDialogConstraints,
    this.imageDialogConstraints,
    this.isWrappable = false,
    this.runSpacing = 8.0,
  }) : assert(runSpacing >= 0);

  ///The text style to use for the label shown in the link-input dialog
  final TextStyle? labelTextStyle;

  ///The text style to use for the input text shown in the link-input dialog
  final TextStyle? inputTextStyle;

  ///The background color for the Quill dialog
  final Color? dialogBackgroundColor;

  /// The shape of this dialog's border.
  ///
  /// Defines the dialog's [Material.shape].
  ///
  /// The default shape is a [RoundedRectangleBorder] with a radius of 4.0
  final ShapeBorder? shape;

  /// Constrains for [LinkStyleDialog].
  final BoxConstraints? linkDialogConstraints;

  /// Constrains for [EmbedImageDialog].
  final BoxConstraints? imageDialogConstraints;

  /// Customizes this button's appearance.
  final ButtonStyle? buttonStyle;

  /// Whether dialog's children are wrappred with [Wrap] instead of [Row].
  final bool isWrappable;

  /// How much space to place between the runs themselves in the cross axis.
  ///
  /// Make sense if [isWrappable] is `true`.
  ///
  /// Defaults to 0.0.
  final double runSpacing;

  QuillDialogTheme copyWith({
    TextStyle? labelTextStyle,
    TextStyle? inputTextStyle,
    Color? dialogBackgroundColor,
    ShapeBorder? shape,
    ButtonStyle? buttonStyle,
    BoxConstraints? linkDialogConstraints,
    BoxConstraints? imageDialogConstraints,
    bool? isWrappable,
    double? runSpacing,
  }) {
    return QuillDialogTheme(
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      dialogBackgroundColor:
          dialogBackgroundColor ?? this.dialogBackgroundColor,
      shape: shape ?? this.shape,
      buttonStyle: buttonStyle ?? this.buttonStyle,
      linkDialogConstraints:
          linkDialogConstraints ?? this.linkDialogConstraints,
      imageDialogConstraints:
          imageDialogConstraints ?? this.imageDialogConstraints,
      isWrappable: isWrappable ?? this.isWrappable,
      runSpacing: runSpacing ?? this.runSpacing,
    );
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is QuillDialogTheme &&
        other.labelTextStyle == labelTextStyle &&
        other.inputTextStyle == inputTextStyle &&
        other.dialogBackgroundColor == dialogBackgroundColor &&
        other.shape == shape &&
        other.buttonStyle == buttonStyle &&
        other.linkDialogConstraints == linkDialogConstraints &&
        other.imageDialogConstraints == imageDialogConstraints &&
        other.isWrappable == isWrappable &&
        other.runSpacing == runSpacing;
  }

  @override
  int get hashCode => Object.hash(
        labelTextStyle,
        inputTextStyle,
        dialogBackgroundColor,
        shape,
        buttonStyle,
        linkDialogConstraints,
        imageDialogConstraints,
        isWrappable,
        runSpacing,
      );
}
