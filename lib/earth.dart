// import 'package:flutter/material.dart';
// import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
// import 'package:vector_math/vector_math_64.dart' as vector;

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   ArCoreController arCoreController;

//   _addSphere(ArCoreController _arcoreController) {
//     final material = ArCoreMaterial(color: Colors.deepPurple);
//     final sphere = ArCoreSphere(materials: [material], radius: 0.2);
//     final node = ArCoreNode(
//       shape: sphere,
//       position: vector.Vector3(
//         0,
//         0,
//         -1,
//       ),
//     );

//     _arcoreController.addArCoreNode(node);
//   }

//   _addCyclinder(ArCoreController _arcoreController) {
//     final material = ArCoreMaterial(color: Colors.green, reflectance: 1);
//     final cylinder =
//         ArCoreCylinder(materials: [material], radius: 0.4, height: 0.3);
//     final node = ArCoreNode(
//       shape: cylinder,
//       position: vector.Vector3(
//         0,
//         -2.5,
//         -3.0,
//       ),
//     );

//     _arcoreController.addArCoreNode(node);
//   }

//   _addCube(ArCoreController _arcoreController) {
//     final material = ArCoreMaterial(color: Colors.pink, metallic: 1);
//     final cube =
//         ArCoreCube(materials: [material], size: vector.Vector3(1, 1, 1));
//     final node = ArCoreNode(
//       shape: cube,
//       position: vector.Vector3(
//         -0.5,
//         -0.5,
//         -3,
//       ),
//     );

//     _arcoreController.addArCoreNode(node);
//   }

//   @override
//   void dispose() {
//     arCoreController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ArCoreView(
//         onArCoreViewCreated: _onArCoreViewCreated,
//         enableTapRecognizer: true,
//       ),
//     );
//   }

//   void _onArCoreViewCreated(ArCoreController controller) {
//     arCoreController = controller;
//     arCoreController.onNodeTap = (name) => onTapHandler(name);
//     arCoreController.onPlaneTap = _handleOnPlaneTap;
//   }

//   void onTapHandler(String name) {
//     showDialog<void>(
//       context: context,
//       builder: (BuildContext context) =>
//           AlertDialog(content: Text('onNodeTap on $name')),
//     );
//   }

//   void _handleOnPlaneTap(List<ArCoreHitTestResult> hits) {
//     final hit = hits.first;

//     final moonMaterial = ArCoreMaterial(color: Colors.grey);

//     final moonShape = ArCoreSphere(
//       materials: [moonMaterial],
//       radius: 0.03,
//     );

//     final moon = ArCoreNode(
//       shape: moonShape,
//       position: vector.Vector3(0.2, 0, 0),
//       rotation: vector.Vector4(0, 0, 0, 0),
//     );

//     final earthMaterial = ArCoreMaterial(
//         color: Color.fromARGB(120, 66, 134, 244), texture: "earth.jpg");

//     final earthShape = ArCoreSphere(
//       materials: [earthMaterial],
//       radius: 0.1,
//     );

//     final earth = ArCoreNode(
//         shape: earthShape,
//         children: [moon],
//         position: plane.pose.translation + vector.Vector3(0.0, 1.0, 0.0),
//         rotation: plane.pose.rotation);

//     arCoreController.addArCoreNodeWithAnchor(earth);
//   }
// }
