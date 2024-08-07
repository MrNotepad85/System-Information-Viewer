# System-Information-Viewer

## Description

The System Information Viewer is a user-friendly Windows batch script that collects and displays basic system information. It provides a simple way for users to view details about their operating system, computer name, manufacturer, and model. The script also offers an option to save this information to a text file for future reference.

## Features

- Collects system information using Windows Management Instrumentation Command-line (WMIC)
- Displays information directly in the console
- Option to save information to a text file on the desktop
- User-friendly interface with clear instructions
- Respects user privacy by keeping all data local

## Usage

1. Download the `system_info_viewer.bat` file from this repository.
2. Double-click the file to run it.
3. Follow the on-screen prompts:
   - Press any key to view your system information.
   - Choose whether to save the information to a file.

## System Requirements

- Windows operating system (tested on Windows 10, but should work on Windows 7 and later)
- Administrative privileges are not required

## Privacy and Security

This script runs entirely on your local machine and does not send any data over the internet. All collected information is displayed only to you and optionally saved to your desktop.

## Customization

You can easily modify the script to collect additional system information by adding more WMIC commands. Please refer to Microsoft's documentation on WMIC for more options.

## Author

MrNotepad85
