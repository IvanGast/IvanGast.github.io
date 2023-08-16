abstract class StringUtils {
  static bool isNetworkAddress(String url) =>
      Uri.tryParse(url)?.hasAbsolutePath ?? false;

  static String formatCategory(String text) =>
      text.substring(0, 1).toUpperCase() + text.substring(1);
}
