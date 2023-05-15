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
import 'mytype_new_type_model.dart';
export 'mytype_new_type_model.dart';

class MytypeNewTypeWidget extends StatefulWidget {
  const MytypeNewTypeWidget({
    Key? key,
    this.newType,
  }) : super(key: key);

  final DocumentReference? newType;

  @override
  _MytypeNewTypeWidgetState createState() => _MytypeNewTypeWidgetState();
}

class _MytypeNewTypeWidgetState extends State<MytypeNewTypeWidget> {
  late MytypeNewTypeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MytypeNewTypeModel());
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
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            backgroundColor: Color(0xC345D239),
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
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
                        'Type Creator',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Work Sans',
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: StreamBuilder<List<TypesRecord>>(
                  stream: queryTypesRecord(
                    queryBuilder: (typesRecord) =>
                        typesRecord.where('creator', isEqualTo: currentUserUid),
                  ),
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
                    List<TypesRecord> buttonTypesRecordList = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('TypeEditortypes');
                      },
                      text: 'My Types',
                      icon: Icon(
                        Icons.topic,
                        size: 30.0,
                      ),
                      options: FFButtonOptions(
                        width: 250.0,
                        height: 80.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 40.0,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      final typesCreateData = createTypesRecordData(
                        createdTime: getCurrentTimestamp,
                        creator: currentUserUid,
                        typeName: 'null',
                      );
                      var typesRecordReference = TypesRecord.collection.doc();
                      await typesRecordReference.set(typesCreateData);
                      _model.newType = TypesRecord.getDocumentFromData(
                          typesCreateData, typesRecordReference);

                      context.pushNamed(
                        'TypeCreation',
                        queryParams: {
                          'newType': serializeParam(
                            _model.newType,
                            ParamType.Document,
                          ),
                        }.withoutNulls,
                        extra: <String, dynamic>{
                          'newType': _model.newType,
                        },
                      );

                      setState(() {});
                    },
                    text: 'New Type',
                    icon: Icon(
                      Icons.add_box_rounded,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 250.0,
                      height: 80.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 40.0,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
