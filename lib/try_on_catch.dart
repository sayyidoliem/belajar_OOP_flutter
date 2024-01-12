void main() {
  try {
    // Kode yang mungkin menghasilkan error
  } on FormatException {
    // Penanganan untuk FormatException
  } on NoSuchMethodError {
    // Penanganan untuk NoSuchMethodError
  } on TypeError {
    // Penanganan untuk TypeError
  } catch (e) {
    // Penanganan untuk error lainnya
  }
}
