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
import 'action_editor_from_editor_model.dart';
export 'action_editor_from_editor_model.dart';

class ActionEditorFromEditorWidget extends StatefulWidget {
  const ActionEditorFromEditorWidget({
    Key? key,
    this.currentAction,
    this.currentType,
  }) : super(key: key);

  final ActionsRecord? currentAction;
  final TypesRecord? currentType;

  @override
  _ActionEditorFromEditorWidgetState createState() =>
      _ActionEditorFromEditorWidgetState();
}

class _ActionEditorFromEditorWidgetState
    extends State<ActionEditorFromEditorWidget> {
  late ActionEditorFromEditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ActionEditorFromEditorModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
    _model.textController4 ??= TextEditingController();
    _model.textController5 ??= TextEditingController();
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
        final actionEditorFromEditorTypesRecord = snapshot.data!;
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
                          'Action Editor',
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextFormField(
                      controller: _model.textController1,
                      onFieldSubmitted: (_) async {
                        final actionsUpdateData = createActionsRecordData(
                          actionName: _model.textController1.text,
                        );
                        await widget.currentAction!.reference
                            .update(actionsUpdateData);
                      },
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: '[Enter Action Name]',
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
                      validator:
                          _model.textController1Validator.asValidator(context),
                    ),
                    if (widget.currentAction!.actionName != null &&
                        widget.currentAction!.actionName != '')
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          widget.currentAction!.actionName!,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        SwitchListTile(
                          value: _model.switchListTileValue1 ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue1 = newValue!);
                            if (newValue!) {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  addLog: _model.switchListTileValue1,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            } else {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  addLog: _model.switchListTileValue1,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            }
                          },
                          title: Text(
                            'Add Log',
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                        if (_model.switchListTileValue1 ?? true)
                          TextFormField(
                            controller: _model.textController2,
                            onFieldSubmitted: (_) async {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  addLogMessage: _model.textController2.text,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Enter Preset Log Message]',
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
                        if (widget.currentAction!.commands.addLogMessage !=
                                null &&
                            widget.currentAction!.commands.addLogMessage != '')
                          Text(
                            widget.currentAction!.commands.addLogMessage!,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                      ],
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        if (_model.switchListTileValue1 ?? true)
                          SwitchListTile(
                            value: _model.switchListTileValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.switchListTileValue2 = newValue!);
                              if (newValue!) {
                                final actionsUpdateData =
                                    createActionsRecordData(
                                  commands: createCommandsStruct(
                                    customLog: _model.switchListTileValue2,
                                    clearUnsetFields: false,
                                  ),
                                );
                                await widget.currentAction!.reference
                                    .update(actionsUpdateData);
                              } else {
                                final actionsUpdateData =
                                    createActionsRecordData(
                                  commands: createCommandsStruct(
                                    customLog: _model.switchListTileValue2,
                                    clearUnsetFields: false,
                                  ),
                                );
                                await widget.currentAction!.reference
                                    .update(actionsUpdateData);
                              }
                            },
                            title: Text(
                              'Add Custom Log',
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                      ],
                    ),
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        SwitchListTile(
                          value: _model.switchListTileValue3 ??= true,
                          onChanged: (newValue) async {
                            setState(
                                () => _model.switchListTileValue3 = newValue!);
                            if (newValue!) {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  sendEmail: _model.switchListTileValue3,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            } else {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  sendEmail: _model.switchListTileValue3,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            }
                          },
                          title: Text(
                            'Send Email',
                            style: FlutterFlowTheme.of(context).headlineSmall,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                        ),
                        if (_model.switchListTileValue3 ?? true)
                          TextFormField(
                            controller: _model.textController3,
                            onFieldSubmitted: (_) async {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  sendEmailAddress: _model.textController3.text,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Enter Email Address]',
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
                        if (widget.currentAction!.commands.sendEmailAddress !=
                                null &&
                            widget.currentAction!.commands.sendEmailAddress !=
                                '')
                          Text(
                            widget.currentAction!.commands.sendEmailAddress!,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        TextFormField(
                          controller: _model.textController4,
                          onFieldSubmitted: (_) async {
                            final actionsUpdateData = createActionsRecordData(
                              commands: createCommandsStruct(
                                sendEmailSubject: _model.textController4.text,
                                clearUnsetFields: false,
                              ),
                            );
                            await widget.currentAction!.reference
                                .update(actionsUpdateData);
                          },
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '[Enter Email Subject]',
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
                          validator: _model.textController4Validator
                              .asValidator(context),
                        ),
                        if (widget.currentAction!.commands.sendEmailSubject !=
                                null &&
                            widget.currentAction!.commands.sendEmailSubject !=
                                '')
                          Text(
                            widget.currentAction!.commands.sendEmailSubject!,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        if (_model.switchListTileValue3 ?? true)
                          TextFormField(
                            controller: _model.textController5,
                            onFieldSubmitted: (_) async {
                              final actionsUpdateData = createActionsRecordData(
                                commands: createCommandsStruct(
                                  sendEmailAddress: _model.textController5.text,
                                  clearUnsetFields: false,
                                ),
                              );
                              await widget.currentAction!.reference
                                  .update(actionsUpdateData);
                            },
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: '[Enter Email Message]',
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
                            validator: _model.textController5Validator
                                .asValidator(context),
                          ),
                        if (widget.currentAction!.commands.sendEmailMessage !=
                                null &&
                            widget.currentAction!.commands.sendEmailMessage !=
                                '')
                          Text(
                            widget.currentAction!.commands.sendEmailMessage!,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                      ],
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.95, 0.0),
                      child: Text(
                        'Choose Groups that will have Access to Action',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    StreamBuilder<List<GroupsRecord>>(
                      stream: queryGroupsRecord(
                        parent: widget.currentType!.reference,
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
                        List<GroupsRecord> listViewGroupsRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewGroupsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewGroupsRecord =
                                listViewGroupsRecordList[listViewIndex];
                            return Theme(
                              data: ThemeData(
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).accent2,
                              ),
                              child: CheckboxListTile(
                                value: _model.checkboxListTileValueMap[
                                    listViewGroupsRecord] ??= true,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.checkboxListTileValueMap[
                                          listViewGroupsRecord] = newValue!);
                                  if (newValue!) {
                                    final actionsUpdateData =
                                        createActionsRecordData(
                                      groups: listViewGroupsRecord.reference,
                                    );
                                    await widget.currentAction!.reference
                                        .update(actionsUpdateData);
                                  }
                                },
                                title: Text(
                                  listViewGroupsRecord.groupName!,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                ),
                                tileColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                              ),
                            );
                          },
                        );
                      },
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'StateEditorFromEditor',
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
                      text: 'Edit States',
                      options: FFButtonOptions(
                        width: 250.0,
                        height: 60.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 30.0,
                                ),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
