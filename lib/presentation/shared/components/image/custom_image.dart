import 'package:cached_network_image/cached_network_image.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:myapp/presentation/shared/utils/string_utils.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.imageUrl,
    required this.height,
    required this.width,
    this.backgroundColor,
  }) : super(key: key);

  final String imageUrl;
  final double height;
  final double width;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.trim().isEmpty) {
      return _FallbackImage(height, width);
    }
    if (StringUtils.isNetworkAddress(imageUrl)) {
      return CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (_, imageProvider) => Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.contain,
            ),
            color: _backgroundColor,
          ),
        ),
        width: width,
        height: height,
        fit: BoxFit.contain,
        placeholder: (_, __) => const Center(
          child: CircularProgressIndicator(),
        ),
        errorWidget: (_, __, ___) => _FallbackImage(height, width),
      );
    } else {
      return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: Image.asset(
              imageUrl,
              width: width,
              height: height,
              errorBuilder: (_, __, ___) => _FallbackImage(height, width),
            ).image,
          ),
          color: _backgroundColor,
        ),
      );
    }
  }

  Color? get _backgroundColor => backgroundColor ?? CustomColors.black;
}

class _FallbackImage extends StatelessWidget {
  const _FallbackImage(
    this.height,
    this.width,
  );

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.black,
      width: width,
      height: height,
      child: Center(
        child: Icon(
          Icons.dangerous_outlined,
          size: width * 0.5,
          color: CustomColors.white.withOpacity(0.3),
        ),
      ),
    );
  }
}
