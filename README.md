# Heaps Android
Forked from https://github.com/HeapsIO/heaps-android/

![android](https://github.com/qkdreyer/heaps-android/workflows/android/badge.svg?branch=master)
<!---
TODO add asciinema
-->

## Setup

```sh
git clone https://github.com/qkdreyer/heaps-android
cd heaps-android
make init
```

## Usage

```sh
make heaps-world
make build
make install
```

# Extra

## Visual Studio Code

`.vscode/tasks.json`
```
{
  // See https://go.microsoft.com/fwlink/?LinkId=733558
  // for the documentation about the tasks.json format
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Build & Run (Android)",
      "dependsOn": [
        "Build (Android)",
        "Run (Android)"
      ],
      "dependsOrder": "sequence",
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "problemMatcher": []
    },
    {
      "label": "Build (Android)",
      "type": "shell",
      "command": "make build",
      "group": "build",
      "problemMatcher": []
  },
  {
      "label": "Run (Android)",
      "type": "shell",
      "command": "make install",
      "group": "build",
      "problemMatcher": []
    },
]
}
```
