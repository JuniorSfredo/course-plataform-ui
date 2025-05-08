# Gallery Explorer

## Overview
Digital Academy is a Flutter application focused on technology education. It offers a modern and interactive welcome journey for new users, with smooth animations, informative onboarding, and seamless screen transitions.

## Features

- **Native Splash Screen**: Initial screen on Android/iOS with a customized image
    - **Animated Splash with Lottie**: Flutter animation using .json files with modern visual effects
    - **Interactive Onboarding**: Series of screens with images and explanatory texts about the app's functionalities
    - **Welcome Page**: Final transition to an animated screen that prepares the user to explore the app
    - **Responsive Design**: Compatible with multiple screen resolutions

## Screenshots

![Home Screen](assets/images/home_screen.png)
![Detail Screen](assets/images/detail_screen.png)

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
  - Dart SDK (3.0.0 or higher)
  - Android Studio / VS Code
  - Emulador ou dispositivo físico

### Installation

1. Clone this repository
   ```
   git clone https://github.com/JuniorSfredo/course-plataform-ui.git
   ```

   2. Navigate to the project folder
      ```
      cd course-plataform-ui
      ```

   3. Install dependencies
      ```
      flutter pub get
      ```

   4. Run the app
      ```
      flutter run
      ```

## Project Structure

The project follows a well-organized folder structure:

```
lib/
├── main.dart           # Entrada do app com configuração do MaterialApp
├── app.dart            # Configuração de temas e rotas
├── common/             # Recursos reutilizáveis
│   ├── constants/
│   │   └── color_const.dart     # Paleta de cores
│   └── widgets/
│       └── circle_button.dart  # Botão personalizado redondo
├── pages/
│   ├── home/
│   │   └── home_page.dart       # Página principal
│   └── splash/
│       ├── splash_page.dart     # Splash screen animada
│       └── sections/
│           ├── splash_animate.dart  # Lottie animation
│           ├── splash_bottom.dart   # Rodapé animado
```

## Architecture

This project follows a simple but effective architecture pattern:

1. **Presentation Layer**: Pages and UI widgets
2. **Common Layer**: Reusable components and constants
3. **Centralized Navigation**: Managed via `app.dart`

The app provides smooth transitions between screens, using Lottie animations to create a modern and engaging experience from the first access.

## Dependencies

- **flutter**: Core framework
    - **lottie**: Library to display vector animations in `.json` format, creating modern transitions and visual effects
    - **google_fonts**: Custom fonts with easy access to Google Fonts

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- To the Flutter community for the vast documentation and support that made this project possible
- To the LottieFiles team for the free and high-quality animations that enrich the user experience
- To educators and IT professionals who inspired the creation of a modern and accessible platform for learning technology
