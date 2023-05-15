import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'thing_page_pre_existing_model.dart';
export 'thing_page_pre_existing_model.dart';

class ThingPagePreExistingWidget extends StatefulWidget {
  const ThingPagePreExistingWidget({
    Key? key,
    this.thing,
  }) : super(key: key);

  final ThingsRecord? thing;

  @override
  _ThingPagePreExistingWidgetState createState() =>
      _ThingPagePreExistingWidgetState();
}

class _ThingPagePreExistingWidgetState
    extends State<ThingPagePreExistingWidget> {
  late ThingPagePreExistingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThingPagePreExistingModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TypesRecord>>(
      stream: queryTypesRecord(
        queryBuilder: (typesRecord) =>
            typesRecord.where('typeName', isEqualTo: widget.thing!.typeId),
        singleRecord: true,
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
        List<TypesRecord> thingPagePreExistingTypesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final thingPagePreExistingTypesRecord =
            thingPagePreExistingTypesRecordList.isNotEmpty
                ? thingPagePreExistingTypesRecordList.first
                : null;
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
                                  context.pushNamed('QR_Scanner');
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
                          'Thing Page',
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
                    widget.thing!.thingName!,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                        ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Text(
                        thingPagePreExistingTypesRecord!.typeName!,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Work Sans',
                                  fontSize: 25.0,
                                ),
                      ),
                    ),
                  ),
                  StreamBuilder<List<ActionsRecord>>(
                    stream: queryActionsRecord(
                      parent: thingPagePreExistingTypesRecord!.reference,
                      queryBuilder: (actionsRecord) =>
                          actionsRecord.whereArrayContainsAny(
                              'checks', widget.thing!.states!.toList()),
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
                      List<ActionsRecord> listViewActionsRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewActionsRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewActionsRecord =
                              listViewActionsRecordList[listViewIndex];
                          return StreamBuilder<List<LogsRecord>>(
                            stream: queryLogsRecord(
                              parent: widget.thing!.reference,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                );
                              }
                              List<LogsRecord> listTileLogsRecordList =
                                  snapshot.data!;
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (listViewActionsRecord.commands.addLog ==
                                      true) {
                                    final logsCreateData = createLogsRecordData(
                                      message: listViewActionsRecord
                                          .commands.addLogMessage,
                                    );
                                    await LogsRecord.createDoc(
                                            widget.thing!.reference)
                                        .set(logsCreateData);
                                  }
                                  if (listViewActionsRecord
                                          .commands.sendEmail ==
                                      true) {
                                    await launchUrl(Uri(
                                        scheme: 'mailto',
                                        path: listViewActionsRecord
                                            .commands.sendEmailAddress!,
                                        query: {
                                          'subject': listViewActionsRecord
                                              .commands.sendEmailSubject!,
                                          'body': listViewActionsRecord
                                              .commands.sendEmailMessage!,
                                        }
                                            .entries
                                            .map((MapEntry<String, String> e) =>
                                                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                            .join('&')));
                                  }
                                  await actions.updateThingStates(
                                    widget.thing!,
                                    listViewActionsRecord.commands.setVar
                                        ?.toList()
                                        ?.toList(),
                                    listViewActionsRecord.commands.removeVar
                                        ?.toList()
                                        ?.toList(),
                                  );
                                  if (listViewActionsRecord
                                          .commands.customLog ==
                                      true) {
                                    context.pushNamed(
                                      'CustomLogEntryFromNew',
                                      queryParams: {
                                        'thing': serializeParam(
                                          widget.thing,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'thing': widget.thing,
                                      },
                                    );
                                  }
                                },
                                child: ListTile(
                                  title: Text(
                                    listViewActionsRecord.actionName!,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall,
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios,
                                    color: FlutterFlowTheme.of(context).accent2,
                                    size: 20.0,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  dense: false,
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.05, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'LogPageFromPreExisting',
                            queryParams: {
                              'thing': serializeParam(
                                widget.thing,
                                ParamType.Document,
                              ),
                            }.withoutNulls,
                            extra: <String, dynamic>{
                              'thing': widget.thing,
                            },
                          );
                        },
                        text: 'View Log',
                        options: FFButtonOptions(
                          width: 250.0,
                          height: 60.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.white,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
