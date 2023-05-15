import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'type_choice_copy_model.dart';
export 'type_choice_copy_model.dart';

class TypeChoiceCopyWidget extends StatefulWidget {
  const TypeChoiceCopyWidget({
    Key? key,
    this.enteredName,
    this.typeChosen,
    this.scannedID,
  }) : super(key: key);

  final String? enteredName;
  final String? typeChosen;
  final String? scannedID;

  @override
  _TypeChoiceCopyWidgetState createState() => _TypeChoiceCopyWidgetState();
}

class _TypeChoiceCopyWidgetState extends State<TypeChoiceCopyWidget> {
  late TypeChoiceCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TypeChoiceCopyModel());

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
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.2),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
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
                                context.pushNamed('HomePage');
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
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Thing Definer',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 25.0,
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
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.02, -0.55),
                    child: StreamBuilder<List<TypesRecord>>(
                      stream: queryTypesRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          );
                        }
                        List<TypesRecord> dropDownTypesRecordList =
                            snapshot.data!;
                        return FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: dropDownTypesRecordList
                              .map((e) => e.typeName)
                              .withoutNulls
                              .toList()
                              .toList(),
                          onChanged: (val) async {
                            setState(() => _model.dropDownValue = val);
                            setState(() {
                              _model.dropDownValueController?.value =
                                  widget.typeChosen!;
                            });
                          },
                          width: 180.0,
                          height: 50.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                          hintText: 'Please select...',
                          fillColor: Colors.white,
                          elevation: 2.0,
                          borderColor: Colors.black,
                          borderWidth: 2.0,
                          borderRadius: 0.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.01, -0.8),
                    child: Text(
                      'Choose Type',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: '{Thing Name}',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                      textAlign: TextAlign.center,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.04, -0.25),
                    child: Text(
                      'Enter Thing Name',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.02, 0.45),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final thingsCreateData = {
                          ...createThingsRecordData(
                            typeId: _model.dropDownValue,
                            thingName: _model.textController.text,
                            codeID: widget.scannedID,
                          ),
                          'initDate': FieldValue.serverTimestamp(),
                          'states': ['New'],
                        };
                        var thingsRecordReference =
                            ThingsRecord.collection.doc();
                        await thingsRecordReference.set(thingsCreateData);
                        _model.newThing = ThingsRecord.getDocumentFromData(
                            thingsCreateData, thingsRecordReference);

                        context.pushNamed(
                          'ThingPageNew',
                          queryParams: {
                            'thing': serializeParam(
                              _model.newThing,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'thing': _model.newThing,
                          },
                        );

                        setState(() {});
                      },
                      text: 'Enter',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF4B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
