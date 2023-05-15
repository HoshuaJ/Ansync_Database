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
import 'state_editor_from_creation_model.dart';
export 'state_editor_from_creation_model.dart';

class StateEditorFromCreationWidget extends StatefulWidget {
  const StateEditorFromCreationWidget({
    Key? key,
    this.currentAction,
    this.currentType,
  }) : super(key: key);

  final ActionsRecord? currentAction;
  final TypesRecord? currentType;

  @override
  _StateEditorFromCreationWidgetState createState() =>
      _StateEditorFromCreationWidgetState();
}

class _StateEditorFromCreationWidgetState
    extends State<StateEditorFromCreationWidget> {
  late StateEditorFromCreationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StateEditorFromCreationModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TypesRecord>(
      stream: TypesRecord.getDocument(widget.currentType!.reference),
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
        final stateEditorFromCreationTypesRecord = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(110.0),
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
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
                                    context.pushNamed(
                                      'ActionEditorFromCreation',
                                      queryParams: {
                                        'currentAction': serializeParam(
                                          widget.currentAction,
                                          ParamType.Document,
                                        ),
                                        'currentType': serializeParam(
                                          widget.currentType,
                                          ParamType.Document,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        'currentAction': widget.currentAction,
                                        'currentType': widget.currentType,
                                      },
                                    );
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
                        alignment: AlignmentDirectional(0.0, -0.1),
                        child: Text(
                          'State Editor',
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
              child: Container(
                width: 500.0,
                height: 700.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: StreamBuilder<ActionsRecord>(
                  stream: ActionsRecord.getDocument(
                      widget.currentAction!.reference),
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
                    final columnActionsRecord = snapshot.data!;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Use Enter button to add State or select state to delete',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Text(
                            'Enter states needed for Action to be present:',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController1,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: '[Needed State]',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodySmall,
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
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              final actionsUpdateData = {
                                'checks': FieldValue.arrayUnion(
                                    [_model.textController1.text]),
                              };
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            },
                            text: 'Enter',
                            options: FFButtonOptions(
                              width: 100.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0.0),
                            child: Text(
                              'Needed States:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final checkedList =
                                  columnActionsRecord.checks!.toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: checkedList.length,
                                itemBuilder: (context, checkedListIndex) {
                                  final checkedListItem =
                                      checkedList[checkedListIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final actionsUpdateData = {
                                        'checks': FieldValue.arrayRemove(
                                            [checkedListItem]),
                                      };
                                      await columnActionsRecord.reference
                                          .update(actionsUpdateData);
                                    },
                                    child: ListTile(
                                      title: Text(
                                        checkedListItem,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
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
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0.0),
                            child: Text(
                              'State  to be added when action is executed:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          TextFormField(
                            controller: _model.textController2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[State to be added]',
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
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  fieldValues: {
                                    'setVar': FieldValue.arrayUnion(
                                        [_model.textController2.text]),
                                  },
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            },
                            text: 'Enter',
                            options: FFButtonOptions(
                              width: 100.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 3.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0.0),
                            child: Text(
                              'States to be added:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final statesAdded = columnActionsRecord
                                      .commands.setVar
                                      ?.toList()
                                      ?.toList() ??
                                  [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: statesAdded.length,
                                itemBuilder: (context, statesAddedIndex) {
                                  final statesAddedItem =
                                      statesAdded[statesAddedIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final actionsUpdateData =
                                          createActionsRecordData(
                                        commands: createCommandsStruct(
                                          fieldValues: {
                                            'setVar': FieldValue.arrayRemove(
                                                [statesAddedItem]),
                                          },
                                          clearUnsetFields: false,
                                        ),
                                      );
                                      await widget.currentAction!.reference
                                          .update(actionsUpdateData);
                                    },
                                    child: ListTile(
                                      title: Text(
                                        statesAddedItem,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
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
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.95, 0.0),
                            child: Text(
                              'State to be removed when action is executed:',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                          TextFormField(
                            controller: _model.textController3,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[State to be removed]',
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
                            validator: _model.textController3Validator
                                .asValidator(context),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  fieldValues: {
                                    'removeVar': FieldValue.arrayUnion(
                                        [_model.textController3.text]),
                                  },
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            },
                            text: 'Enter',
                            options: FFButtonOptions(
                              width: 100.0,
                              height: 30.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
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
                          Builder(
                            builder: (context) {
                              final removedStates = columnActionsRecord
                                      .commands.removeVar
                                      ?.toList()
                                      ?.toList() ??
                                  [];
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: removedStates.length,
                                itemBuilder: (context, removedStatesIndex) {
                                  final removedStatesItem =
                                      removedStates[removedStatesIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final actionsUpdateData =
                                          createActionsRecordData(
                                        commands: createCommandsStruct(
                                          fieldValues: {
                                            'removeVar': FieldValue.arrayRemove(
                                                [removedStatesItem]),
                                          },
                                          clearUnsetFields: false,
                                        ),
                                      );
                                      await widget.currentAction!.reference
                                          .update(actionsUpdateData);
                                    },
                                    child: ListTile(
                                      title: Text(
                                        removedStatesItem,
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall,
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
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
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
