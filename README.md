<p align="center">
  <a href="https://searx.orion-hub.fr"><img src="static/icons/icon.png" width="256"></a>
</p>

<div align="center">
  <h1>Orion Web Browser</h1>

[![Actions Status](https://github.com/nalem14/browser-base/workflows/Build/badge.svg)](https://github.com/nalem14/browser-base/actions)

Orion Web Browser is a modern web browser, based on [Wexond](https://github.com/nalem14/browser-base). It is focused on privacy protection.
- Integrated Searx search engine focused on privacy (by default, can be customized)
- Block every trackers
- AdBlock protection

</div>

# Table of Contents:
- [Features](#features)
- [Screenshots](#screenshots)
- [Downloads](#downloads)
- [Contributing](#contributing)
- [Development](#development)
  - [Running](#running)
- [Documentation](#documentation)
- [License](#license)

# Features

- **Wexond Shield** - Browse the web without any ads and don't let websites to track you. Thanks to the Wexond Shield powered by [Cliqz](https://github.com/cliqz-oss/adblocker), websites can load even 8 times faster!
- **Chromium without Google services and low resources usage** - Since Orion uses Electron under the hood which is based on only several and the most important Chromium components, it's not bloated with redundant Google tracking services and others.
- **Fast and fluent UI** - The animations are really smooth and their timings are perfectly balanced.
- **Highly customizable new tab page** - Customize almost an every aspect of the new tab page!
- **Customizable browser UI** - Choose whether Orion should have compact or normal UI.
- **Tab groups** - Easily group tabs, so it's hard to get lost.
- **Form auto-fill** - Remember your accounts/passwords directly in the browser!
- **Scrollable tabs**
- **Partial support for Chrome extensions** - Install some extensions directly from Chrome Web Store\* (see [#110](https://github.com/wexond/wexond/issues/110)) (WIP)

## Other basic features

- Downloads popup with currently downloaded items (download manager WebUI page is WIP)
- History manager
- Bookmarks bar & manager
- Settings
- Find in page
- Dark and light theme
- Omnibox with autocomplete algorithm similar to Chromium
- State of the art tab system

# Screenshots

![image](https://user-images.githubusercontent.com/11065386/81024159-d9388f80-8e72-11ea-85e7-6c30e3b66554.png)

UI normal variant:
![image](https://user-images.githubusercontent.com/11065386/81024186-f40b0400-8e72-11ea-976e-cd1ca1b43ad8.png)

UI compact variant:
![image](https://user-images.githubusercontent.com/11065386/81024222-13099600-8e73-11ea-9fc9-3c63a034403d.png)
![image](https://user-images.githubusercontent.com/11065386/81024252-2ddc0a80-8e73-11ea-9f2f-6c9a4a175c60.png)

# Downloads
- [Stable and beta versions](https://github.com/nalem14/browser-base/releases)

# Contributing

If you have found any bugs or just want to see some new features in Orion, feel free to open an issue. Every suggestion is very valuable for us, as they help us improve the browsing experience. Also, please don't hesitate to open a pull request. This is really important to us and for the further development of this project.

By opening a pull request, you agree to the conditions of the [Contributor License Agreement](cla.md).

# Development

## Running

Before running Orion, please ensure you have **latest** [`Node.js`](https://nodejs.org/en/) and [`Yarn`](https://classic.yarnpkg.com/en/docs/install/#windows-stable) installed on your machine.

### Windows

Make sure you have build tools installed. You can install them by running this command as **administrator**:

```bash
$ npm i -g windows-build-tools
```

```bash
$ yarn # Install needed depedencies.
$ yarn rebuild # Rebuild native modules using Electron headers.
$ yarn dev # Run Wexond in development mode
```

### More commands

```bash
$ yarn compile-win32 # Package Wexond for Windows
$ yarn compile-linux # Package Wexond for Linux
$ yarn compile-darwin # Package Wexond for macOS
$ yarn lint # Runs linter
$ yarn lint-fix # Runs linter and automatically applies fixes
```

More commands can be found in [`package.json`](package.json).

# Documentation

Guides and the API reference are located in [`docs`](docs) directory.

# License

#### Every usage of this project resources (code, graphics etc.) must be consulted with its author (sentialx@gmail.com).

By sending a Pull Request, you agree that your code may be relicensed or sublicensed.
