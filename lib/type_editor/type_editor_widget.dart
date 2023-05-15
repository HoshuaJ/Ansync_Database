import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'type_editor_model.dart';
export 'type_editor_model.dart';

class TypeEditorWidget extends StatefulWidget {
  const TypeEditorWidget({
    Key? key,
    this.enteredName,
    this.currentType,
  }) : super(key: key);

  final String? enteredName;
  final TypesRecord? currentType;

  @override
  _TypeEditorWidgetState createState() => _TypeEditorWidgetState();
}

class _TypeEditorWidgetState extends State<TypeEditorWidget> {
  late TypeEditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TypeEditorModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Color(0xC345D239),
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 5.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 50.0,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('MytypeNewType');
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 18.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 5.0, 0.0, 0.0),
                          child: Image.asset(
                            'assets/images/logoedit.png',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Ansync Labs ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Type Editor',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Work Sans',
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Change Type Name',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 30.0,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: TextFormField(
                  controller: _model.textController,
                  onFieldSubmitted: (_) async {
                    setState(() {
                      _model.textController?.text = widget.enteredName!;
                    });
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: '[Type Name]',
                    hintStyle: FlutterFlowTheme.of(context).bodySmall,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  textAlign: TextAlign.center,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  final typesUpdateData = createTypesRecordData(
                    typeName: _model.textController.text,
                  );
                  await widget.currentType!.reference.update(typesUpdateData);
                },
                text: 'Enter',
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'GroupEditFromEditor',
                      queryParams: {
                        'currentType': serializeParam(
                          widget.currentType,
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'currentType': widget.currentType,
                      },
                    );
                  },
                  text: 'Edit Groups',
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 80.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 35.0,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'ActionSelectionFromEditor',
                      queryParams: {
                        'currentType': serializeParam(
                          widget.currentType,
                          ParamType.Document,
                        ),
                      }.withoutNulls,
                      extra: <String, dynamic>{
                        'currentType': widget.currentType,
                      },
                    );
                  },
                  text: 'Edit Actions',
                  options: FFButtonOptions(
                    width: 250.0,
                    height: 80.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF131010),
                          fontSize: 35.0,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
