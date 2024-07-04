---

# Container Widget in Flutter

This project demonstrates the use of the `Container` widget in Flutter, showcasing its versatility in creating customizable rectangular visual elements.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Key Points](#key-points)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The `Container` widget is a fundamental building block in Flutter, allowing you to create a rectangular visual element with customizable properties such as padding, margin, borders, and more. It is commonly used for layout and styling purposes.

## Features

- **Customizable Dimensions**: Set width, height, and constraints.
- **Styling**: Apply padding, margin, color, and decoration.
- **Transformations**: Apply transformations such as rotation and scaling.
- **Child Widget**: Embed any child widget within the container.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/container_widget_example.git
   ```
2. Navigate to the project directory:
   ```bash
   cd container_widget_example
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

## Usage

To run the project, use the following command:
```bash
flutter run
```

### Main Code Snippet

Below is a key snippet of the `Container` widget implementation:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Widget Example'),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2, 2),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Hello, Container!',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

## Screenshots

![App Screenshot](screenshots/screenshot1.png)
![Container Screenshot](screenshots/screenshot2.png)

## Key Points

- **Dimensions**: Set width, height, and constraints to customize the size of the container.
- **Styling**: Apply padding, margin, color, and decoration to style the container.
- **Transformations**: Use transformations for rotation, scaling, and other effects.
- **Child Widget**: Embed and center any child widget within the container for further customization.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
