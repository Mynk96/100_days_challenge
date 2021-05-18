class Utility {
  static dynamic getValue(Map<String, dynamic> data, String key, dynamic defaultValue) {
    if (data.containsKey(key)) {
      return data[key];
    }
    return defaultValue;
  }
}