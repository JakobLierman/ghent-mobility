# Ghent Mobility

Tool to get information about mobility in Ghent.

Created using publicly available data from [Ghent Open Data Portal](https://data.stad.gent/explore).

## Getting Started

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials, samples, guidance on
mobile development, and a full API reference.

## Running the app

You need to have Flutter installed. You can find the installation
instructions [here](https://flutter.dev/docs/get-started/install).

To run the app, you need to have a device connected or an emulator running. You can find the
instructions [here](https://flutter.dev/docs/get-started/test-drive?tab=terminal#android-setup).

1. Clone the repository.
2. Copy the `.env.example` file to `.env` (`cp .env.example .env`) and fill in the values.
3. Run `flutter pub get` in the root of the project to install all the dependencies.
4. Run `flutter run` in the root of the project.
5. Enjoy!

## Running the tests

```bash
flutter test
```

### Running the tests with coverage

```bash
flutter test --coverage
```

To run the tests with coverage, you can run `flutter test --coverage` in the root of the project.

### Generating a test report

You need to have the coverage package installed. You can do this by
running `flutter pub global activate coverage` in the root of the project.

```bash
flutter test --coverage && genhtml coverage/lcov.info -o coverage/html
```

#### Opening the test report

```bash
flutter test --coverage && genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html
```

## Folder structure

- `lib/` contains the source code of the app
- `lib/models/` contains the models used in the app
- `lib/providers/` contains the providers used in the app
- `lib/repositories/` contains the repositories used in the app
- `lib/screens/` contains the screens of the app
- `lib/services/` contains the services used in the app
- `lib/utils/` contains the utils used in the app
- `lib/widgets/` contains the widgets used in the app
- `test/` contains the tests of the app

## Acknowledgments

- [Ghent Open Data Portal](https://data.stad.gent/explore)
- [Flutter](https://flutter.dev/)
- [Riverpod](https://riverpod.dev/)
- [Dio](https://pub.dev/packages/dio)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

- [GitHub](https://github.com/JakobLierman)
- [LinkedIn](https://www.linkedin.com/in/jakoblierman/)
