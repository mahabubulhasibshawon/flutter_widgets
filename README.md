---

# Flutter Widgets Guide

This project provides an overview of various Flutter widgets, including their usage and code examples, to help you get started with Flutter development.

## Table of Contents

- [Introduction](#introduction)
- [Widgets Overview](#widgets-overview)
  - [Scaffold](#scaffold)
  - [Container](#container)
  - [Icons](#icons)
  - [Text](#text)
  - [Row](#row)
  - [Column](#column)
  - [Button](#button)
  - [BottomNavigationBar](#bottomnavigationbar)
  - [Drawer](#drawer)
  - [GridView](#gridview)
  - [ListView](#listview)
  - [Navigation](#navigation)
  - [Stack](#stack)
  - [TextField](#textfield)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Flutter is an open-source UI software development toolkit created by Google. It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. This project aims to demonstrate various Flutter widgets and their usage through simple examples.

## Widgets Overview

### Scaffold

The `Scaffold` widget provides a framework for the basic material design visual layout structure. It includes an `AppBar`, `Drawer`, `BottomNavigationBar`, and a `FloatingActionButton`.

#### Example:

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
          title: Text('Scaffold Example'),
        ),
        body: Center(
          child: Text('Hello, Scaffold!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

### Container

The `Container` widget is a versatile widget that can be used for styling, positioning, and sizing.

#### Example:

```dart
import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Center(
          child: Text(
            'Hello, Container!',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
```

### Icons

The `Icons` widget provides access to a wide range of Material Design icons.

#### Example:

```dart
import 'package:flutter/material.dart';

class IconsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.home, size: 50.0, color: Colors.blue),
          Icon(Icons.favorite, size: 50.0, color: Colors.red),
          Icon(Icons.settings, size: 50.0, color: Colors.grey),
        ],
      ),
    );
  }
}
```

### Text

The `Text` widget is used to display a string of text with a single style.

#### Example:

```dart
import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, Flutter!',
        style: TextStyle(fontSize: 24.0, color: Colors.black),
      ),
    );
  }
}
```

### Row

The `Row` widget is used to create a horizontal array of widgets.

#### Example:

```dart
import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Row 1'),
          SizedBox(width: 10),
          Text('Row 2'),
          SizedBox(width: 10),
          Text('Row 3'),
        ],
      ),
    );
  }
}
```

### Column

The `Column` widget is used to create a vertical array of widgets.

#### Example:

```dart
import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Column 1'),
          SizedBox(height: 10),
          Text('Column 2'),
          SizedBox(height: 10),
          Text('Column 3'),
        ],
      ),
    );
  }
}
```

### Button

Flutter provides several button widgets, including `ElevatedButton`, `TextButton`, and `OutlinedButton`.

#### Example:

```dart
import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Text('Elevated Button'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Text Button'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Outlined Button'),
          ),
        ],
      ),
    );
  }
}
```

### BottomNavigationBar

The `BottomNavigationBar` widget is used to display a bottom navigation bar with multiple items.

#### Example:

```dart
import 'package:flutter/material.dart';

class BottomNavBarExample extends StatefulWidget {
  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar Example'),
      ),
      body: Center(
        child: Text('Selected Index: $_selectedIndex'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
```

### Drawer

The `Drawer` widget is used to create a navigation drawer.

#### Example:

```dart
import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Hello, Drawer!'),
      ),
    );
  }
}
```

### GridView

The `GridView` widget is used to display a scrollable, 2D array of widgets.

#### Example:

```dart
import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}
```

### ListView

The `ListView` widget is used to display a scrollable list of widgets.

#### Example:

```dart
import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final List<String> items = List<String>.generate(100, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            ```dart
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
```

### Navigation

Flutter provides various ways to navigate between screens. The most common method is using the `Navigator` widget with `push` and `pop` methods.

#### Example:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go Back'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
```

### Stack

The `Stack` widget allows you to overlay multiple widgets on top of each other.

#### Example:

```dart
import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Example'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
```

### TextField

The `TextField` widget is used to create a text input field.

#### Example:

```dart
import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter your name',
          ),
        ),
      ),
    );
  }
}
```

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter_widgets_example.git
   ```
2. Navigate to the project directory:
   ```bash
   cd flutter_widgets_example
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

## Screenshots


## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---


