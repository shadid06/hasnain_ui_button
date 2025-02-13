[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shamim-hasnain/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://x.com/hasnain_bd)
[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/hasnain.dev)

# About Me

I am shamim hasnain (shadid), a Flutter & React developer with a passion for creating reusable UI components. I have created this package to help you create beautiful and customizable buttons for your Flutter applications.

# Hasnain UI Button

A customizable Flutter button package that provides various button styles and variants with extensive customization options.

## Features

- Multiple button variants (Solid, Outline, Destructive)
- Customizable width and height
- Custom background colors
- Border customization for outline variant
- Border radius customization
- Text style customization
- Disabled state support

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  hasnain_ui_button: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

First, import the package:

```dart
import 'package:hasnain_ui_button/button.dart';
```

### Basic Usage

```dart
Button(
  text: 'Click me',
  onPressed: () {
    print('Button pressed');
  },
)
```

### Button Variants

#### Outline Button

```dart
Button(
  variant: ButtonVariant.outline,
  text: 'Outline Button',
  onPressed: () {},
)
```

#### Solid Button

```dart
Button(
  variant: ButtonVariant.solid,
  text: 'Solid Button',
  onPressed: () {},
)
```

#### Destructive Button

```dart
Button(
  variant: ButtonVariant.destructive,
  text: 'Destructive Button',
  onPressed: () {},
)
```

### Customization Examples

#### Custom Colors and Size

```dart
Button(
  text: 'Custom Button',
  backgroundColor: Colors.teal,
  width: 150,
  height: 50,
  onPressed: () {},
)
```

#### Custom Border

```dart
Button(
  variant: ButtonVariant.outline,
  text: 'Custom Border',
  borderSide: BorderSide(color: Colors.red, width: 2),
  onPressed: () {},
)
```

#### Custom Text Style

```dart
Button(
  text: 'Styled Text',
  textStyle: TextStyle(
    color: Colors.redAccent,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  ),
  onPressed: () {},
)
```

#### Disabled Button

```dart
Button(
  text: 'Disabled',
  isDisabled: true,
  onPressed: () {},
)
```

## Properties

| Property        | Type          | Description                                        |
| --------------- | ------------- | -------------------------------------------------- |
| text            | String        | The button's label text                            |
| onPressed       | VoidCallback  | Function called when button is pressed             |
| variant         | ButtonVariant | Button style variant (solid, outline, destructive) |
| width           | double?       | Custom button width                                |
| height          | double?       | Custom button height                               |
| backgroundColor | Color?        | Custom background color                            |
| borderSide      | BorderSide?   | Custom border properties for outline variant       |
| borderRadius    | BorderRadius? | Custom border radius                               |
| isDisabled      | bool?         | Whether the button is disabled                     |
| textStyle       | TextStyle?    | Custom text style                                  |

## Additional Information

- Requires Flutter SDK: >=3.0.0
- Supports both Material 2 and Material 3
- Platform Support: Android, iOS, Web, Windows, macOS, Linux

<!-- ## Contributing

Feel free to contribute to this package:

1. Fork it
2. Create your feature branch (git checkout -b feature/awesome-feature)
3. Commit your changes (git commit -m 'Add awesome feature')
4. Push to the branch (git push origin feature/awesome-feature)
5. Create a Pull Request -->

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
