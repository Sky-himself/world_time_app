# World Time

An early Flutter app for checking the current local time in several cities. Choose a location to see its time and a day or night view. The app converts the device clock using the bundled IANA time-zone database, so time conversion works offline.

## Explore the code

Explore [the location picker](lib/pages/Location.dart), [home screen](lib/pages/HomeScreen.dart), and [time-zone service](lib/services/world_time.dart).

## Run locally

Use a Flutter SDK with Dart 3 that satisfies [`pubspec.yaml`](pubspec.yaml). Keep the `timezone` package current when time-zone rules change.

```sh
flutter pub get
flutter run
```
