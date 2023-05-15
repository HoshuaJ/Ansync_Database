import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'group_user_choice_from_editor_model.dart';
export 'group_user_choice_from_editor_model.dart';

class GroupUserChoiceFromEditorWidget extends StatefulWidget {
  const GroupUserChoiceFromEditorWidget({
    Key? key,
    this.currentGroup,
    required this.currentType,
  }) : super(key: key);

  final GroupsRecord? currentGroup;
  final TypesRecord? currentType;

  @override
  _GroupUserChoiceFromEditorWidgetState createState() =>
      _GroupUserChoiceFromEditorWidgetState();
}

class _GroupUserChoiceFromEditorWidgetState
    extends State<GroupUserChoiceFromEditorWidget> {
  late GroupUserChoiceFromEditorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GroupUserChoiceFromEditorModel());

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
    return StreamBuilder<GroupsRecord>(
      stream: GroupsRecord.getDocument(widget.currentGroup!.reference),
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
        final groupUserChoiceFromEditorGroupsRecord = snapshot.data!;
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
                          'Group Editor',
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
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.05, 0.0),
                    child: Container(
                      width: 250.0,
                      child: TextFormField(
                        controller: _model.textController,
                        onFieldSubmitted: (_) async {
                          final groupsUpdateData = createGroupsRecordData(
                            groupName: _model.textController.text,
                          );
                          await widget.currentGroup!.reference
                              .update(groupsUpdateData);
                        },
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: '[Enter Group Name]',
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
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                  StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(),
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
                      List<UsersRecord> listViewUsersRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewUsersRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewUsersRecord =
                              listViewUsersRecordList[listViewIndex];
                          return Theme(
                            data: ThemeData(
                              unselectedWidgetColor:
                                  FlutterFlowTheme.of(context).accent2,
                            ),
                            child: CheckboxListTile(
                              value: _model.checkboxListTileValueMap[
                                  listViewUsersRecord] ??= true,
                              onChanged: (newValue) async {
                                setState(() => _model.checkboxListTileValueMap[
                                    listViewUsersRecord] = newValue!);
                                if (newValue!) {
                                  final groupsUpdateData = {
                                    'users': FieldValue.arrayUnion([
                                      _model.checkboxListTileValueMap[
                                              listViewUsersRecord]
                                          ?.toString()
                                    ]),
                                  };
                                  await widget.currentGroup!.reference
                                      .update(groupsUpdateData);
                                } else {
                                  final groupsUpdateData = {
                                    'users': FieldValue.arrayRemove([
                                      _model.checkboxListTileValueMap[
                                              listViewUsersRecord]
                                          ?.toString()
                                    ]),
                                  };
                                  await widget.currentGroup!.reference
                                      .update(groupsUpdateData);
                                }
                              },
                              title: Text(
                                listViewUsersRecord.email!,
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                              ),
                              tileColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeColor: FlutterFlowTheme.of(context).primary,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.trailing,
                            ),
                          );
                        },
                      );
                    },
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
