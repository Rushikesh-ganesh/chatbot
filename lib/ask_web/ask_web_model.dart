import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ask_web_widget.dart' show AskWebWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AskWebModel extends FlutterFlowModel<AskWebWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for url widget.
  FocusNode? urlFocusNode;
  TextEditingController? urlController;
  String? Function(BuildContext, String?)? urlControllerValidator;
  // Stores action output result for [Backend Call - API (websiteUpsert)] action in Button widget.
  ApiCallResponse? apiResulth93;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatSessionsRecord? createdSession;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    urlFocusNode?.dispose();
    urlController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
