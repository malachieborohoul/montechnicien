
import 'package:flutter/material.dart';

const Color primary = Color(0xFF1969CA);
const Color secondary = Color(0xFFE6202F);
const Color textFieldBorder = Color(0xFFDADADA);
const Color textGrey = Color(0xFF9A9A9A);
const Color blueLight = Color(0xFF5A667D);
const Color textFieldBackground = Color(0xFFF1F1F1);
const Color textWhite = Color(0xFFFFFFFF);
const Color background = Color(0xFFFFFFFF);
const Color textBlack = Color(0xFF171E29);
const Color standard = Color(0xFF48A3AF);
const Color premium = Color(0xFFAF8D48);

final lightTheme = ThemeData(
    primaryColor: primary,
    colorScheme: ColorScheme.light(),
   );

final darkTheme = ThemeData(
    primaryColor: darkPrimary,
    colorScheme: ColorScheme.dark(),
   );

// final darkPrimary = Color(0xFF24344D); // Une nuance plus foncée de bleu
// final darkBackground = Color(0xFF1A1A1A); // Fond plus sombre

// final darkPrimary = Color(0xFF0A1B3D); // Nuance plus foncée de bleu
// final darkBackground = Color(0xFF101010); // Fond plus sombre
// final darkGradientStart = Color(0xFF19398B); // Début du dégradé plus foncé
// final darkGradientEnd = darkPrimary;

final darkPrimary = Color(0xFF0D1B30); // Nuance plus foncée de bleu
final darkBackground = Color(0xFF0A0E14); // Fond plus sombre
final darkGradientStart = Color(0xFF1A2A4D); // Début du dégradé plus foncé
final darkGradientEnd =
    darkPrimary; // Fin du dégradé correspond à la couleur principale

// // Couleurs en mode sombre
// final darkPrimary = Color(0xFF1E1E1E); // Gris anthracite
// final darkBackground = Color(0xFF121212); // Fond plus sombre
// final darkGradientStart = Color(0xFF333333); // Début du dégradé plus foncé
// final darkGradientEnd =
//     darkPrimary; // Fin du dégradé correspond à la couleur principale