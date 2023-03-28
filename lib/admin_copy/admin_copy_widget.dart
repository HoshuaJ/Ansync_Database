import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_copy_model.dart';
export 'admin_copy_model.dart';

class AdminCopyWidget extends StatefulWidget {
  const AdminCopyWidget({
    Key? key,
    this.newType,
    this.enteredName,
  }) : super(key: key);

  final DocumentReference? newType;
  final String? enteredName;

  @override
  _AdminCopyWidgetState createState() => _AdminCopyWidgetState();
}

class _AdminCopyWidgetState extends State<AdminCopyWidget> {
  late AdminCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminCopyModel());

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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Color(0xC345D239),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
              child: Column(
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
                              context.pushNamed('TypeCreatorCopy');
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 5.0, 0.0, 0.0),
                          child: Text(
                            'Back',
                            style: FlutterFlowTheme.of(context).title2.override(
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
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
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
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        'Type Creation',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title2.override(
                              fontFamily: 'Work Sans',
                              color: Colors.black,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2.0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Enter Type Name',
                style: FlutterFlowTheme.of(context).bodyText1.override(
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
                    hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                  style: FlutterFlowTheme.of(context).bodyText1,
                  textAlign: TextAlign.center,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final variableStatesCreateData =
                        createVariableStatesRecordData(
                      state1: createVariableStateStruct(
                        stateName: 'null',
                        doButton1: 'null',
                        doButton3: true,
                        doButton4: 0,
                        doButton5: getCurrentTimestamp,
                        clearUnsetFields: false,
                        create: true,
                      ),
                      state2: createVariableStateStruct(
                        doButton1: 'null',
                        doButton3: true,
                        doButton4: 0,
                        doButton5: getCurrentTimestamp,
                        stateName: 'null',
                        clearUnsetFields: false,
                        create: true,
                      ),
                      state3: createVariableStateStruct(
                        doButton1: 'null',
                        doButton3: true,
                        doButton4: 0,
                        doButton5: getCurrentTimestamp,
                        stateName: 'null',
                        clearUnsetFields: false,
                        create: true,
                      ),
                      state4: createVariableStateStruct(
                        doButton1: 'null',
                        doButton3: true,
                        doButton4: 0,
                        doButton5: getCurrentTimestamp,
                        stateName: 'null',
                        clearUnsetFields: false,
                        create: true,
                      ),
                    );
                    await VariableStatesRecord.createDoc(widget.newType!)
                        .set(variableStatesCreateData);
                  },
                  text: 'Create States',
                  options: FFButtonOptions(
                    width: 450.0,
                    height: 80.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xC3FFFFFF),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 35.0,
                        ),
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
                      'TypeCreatorCopyCopyCopyCopy',
                      queryParams: {
                        'currentType': serializeParam(
                          widget.newType,
                          ParamType.DocumentReference,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Edit States',
                  options: FFButtonOptions(
                    width: 450.0,
                    height: 80.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF131010),
                          fontSize: 35.0,
                        ),
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 3.0,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  final typesUpdateData = createTypesRecordData(
                    typeName: widget.enteredName,
                  );
                  await widget.newType!.update(typesUpdateData);
                },
                text: 'Enter',
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
