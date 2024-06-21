part of '../../main.dart';
ThemeData _theme(){
  return ThemeData(
    fontFamily: 'Nunito Sans',
    appBarTheme: _appBarThem(),
    colorScheme:const  ColorScheme.light()
    // textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w100)
  );
}

AppBarTheme _appBarThem(){
  return const AppBarTheme(
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'Nunito Sans',
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w700
    ),
    centerTitle: true,
    elevation: 0,
  );
}

