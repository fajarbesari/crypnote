class CrypnoteException implements Exception {
  final String message;
  final Object? exception;

  CrypnoteException(this.message, [this.exception]);

  @override
  String toString() {
    return '$message ${exception?.toString() ?? ''}';
  }
}
