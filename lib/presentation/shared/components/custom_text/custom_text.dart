import 'package:flutter/material.dart';

abstract class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    Key? key,
    this.textAlign,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.color,
    this.decoration,
    this.fontWeight,
  }) : super(key: key);

  const factory CustomText.h1(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _H1;

  const factory CustomText.h2(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _H2;

  const factory CustomText.h3(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _H3;

  const factory CustomText.h4(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _H4;

  const factory CustomText.h5(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _H5;

  const factory CustomText.bodyS(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) = _BodyS;

  const factory CustomText.bodyL(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) = _BodyL;

  const factory CustomText.bodyLExtra(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) = _BodyLExtra;

  const factory CustomText.button(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _Button;

  const factory CustomText.caption(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    FontWeight? fontWeight,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) = _Caption;

  final String text;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;
  final Color? color;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;

  Widget _buildText(TextStyle style) {
    return Text(
      text,
      style: style.copyWith(
        color: color,
        decoration: decoration,
        decorationColor: color,
        decorationStyle: TextDecorationStyle.solid,
        decorationThickness: 2,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class _H1 extends CustomText {
  const _H1(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.displayLarge!,
    );
  }
}

class _H2 extends CustomText {
  const _H2(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.displayMedium!,
    );
  }
}

class _H3 extends CustomText {
  const _H3(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.displaySmall!,
    );
  }
}

class _H4 extends CustomText {
  const _H4(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.headlineMedium!,
    );
  }
}

class _H5 extends CustomText {
  const _H5(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.headlineSmall!,
    );
  }
}

class _BodyS extends CustomText {
  const _BodyS(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.bodyLarge!,
    );
  }
}

class _BodyL extends CustomText {
  const _BodyL(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.bodyMedium!,
    );
  }
}

class _BodyLExtra extends CustomText {
  const _BodyLExtra(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w800,
            fontSize: 25,
          ),
    );
  }
}

class _Button extends CustomText {
  const _Button(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.labelLarge!,
    );
  }
}

class _Caption extends CustomText {
  const _Caption(
    String text, {
    Key? key,
    TextAlign? textAlign,
    bool? softWrap,
    TextOverflow? overflow,
    int? maxLines,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) : super(
          text,
          key: key,
          textAlign: textAlign,
          softWrap: softWrap,
          overflow: overflow,
          maxLines: maxLines,
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
        );

  @override
  Widget build(BuildContext context) {
    return _buildText(
      Theme.of(context).textTheme.bodySmall!,
    );
  }
}
