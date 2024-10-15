import 'package:shared_preferences/shared_preferences.dart';

class SingletonSharedPreferences
{
  SingletonSharedPreferences._();

  // Static instance of the class
  static final SingletonSharedPreferences sharedPreferencesInstance = SingletonSharedPreferences._();

  // Getter for the instance
  static SingletonSharedPreferences get instance => sharedPreferencesInstance;

  // SharedPreferences object
  SharedPreferences? _sharedPreferencesObject;

  // Initialize the SharedPreferences
  Future<void> init() async => _sharedPreferencesObject = await SharedPreferences.getInstance();

  // Function to save data
  Future<void> setString(String key, String value) async => await _sharedPreferencesObject?.setString(key, value);

  // Function to retrieve data
  String? getString(String key) => _sharedPreferencesObject?.getString(key);
}