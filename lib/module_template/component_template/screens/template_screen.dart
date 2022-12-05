import 'package:flutter/material.dart';
import 'package:flutx/flutx.dart';
import 'package:template_app/module_template/component_template/controllers/template_screen_controller.dart';

class TemplateScreen extends StatefulWidget {
  @override
  _TemplateScreenState createState() => _TemplateScreenState();
}

class _TemplateScreenState extends State<TemplateScreen> {
  late TemplateScreenController controller;

  @override
  void initState() {
    super.initState();
    FxControllerStore.resetStore();
    controller = FxControllerStore.putOrFind(TemplateScreenController());
  }

  @override
  Widget build(BuildContext context) {
    return FxBuilder<TemplateScreenController>(
        controller: controller,
        builder: (controller) {
          return _buildBody();
        });
  }

  Widget _buildBody() {
    return Text("Template Screen");
  }
}
