import "package:flutter/material.dart";

class SnackBarUtils {
  static SnackBar buildErrorSnackBar(final String message) {
    return SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red,
    );
  }

  static SnackBar buildInfoSnackBar(final String message) {
    return SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}
