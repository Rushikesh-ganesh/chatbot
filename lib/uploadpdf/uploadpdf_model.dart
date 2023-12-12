import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'uploadpdf_widget.dart' show UploadpdfWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadpdfModel extends FlutterFlowModel<UploadpdfWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for session_name widget.
  FocusNode? sessionNameFocusNode;
  TextEditingController? sessionNameController;
  String? Function(BuildContext, String?)? sessionNameControllerValidator;
  // Stores action output result for [Backend Call - API (pdfUpsert)] action in Button widget.
  ApiCallResponse? apiResultk59;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatSessionsRecord? createdSessionPdf;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    sessionNameFocusNode?.dispose();
    sessionNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
