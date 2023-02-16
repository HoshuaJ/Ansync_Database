import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'type_creator_model.dart';
export 'type_creator_model.dart';

class TypeCreatorWidget extends StatefulWidget {
  const TypeCreatorWidget({Key? key}) : super(key: key);

  @override
  _TypeCreatorWidgetState createState() => _TypeCreatorWidgetState();
}

class _TypeCreatorWidgetState extends State<TypeCreatorWidget> {
  late TypeCreatorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TypeCreatorModel());
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primaryColor,
                    Color(0xFF39EFAE)
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0.1, -1),
                  end: AlignmentDirectional(-0.1, 1),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.92),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/logoedit.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'Ansync Labs',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 43,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.08, -0.7),
                    child: Text(
                      'Research & Development | Product Design | On Site Manufacturing',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 11,
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
