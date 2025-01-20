import 'package:flutter/material.dart';
{{#isStateless}}
class {{filename.pascalCase()}} extends StatelessWidget {
  const {{filename.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
{{/isStateless}}
{{^isStateless}}
class {{filename.pascalCase()}} extends StatefulWidget {
  const {{filename.pascalCase()}}({super.key});

  @override
  State<{{filename.pascalCase()}}> createState() => _{{filename.pascalCase()}}State();
}
class _{{filename.pascalCase()}}State extends State<{{filename.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
{{/isStateless}}