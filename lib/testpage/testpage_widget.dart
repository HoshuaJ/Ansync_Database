import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'testpage_model.dart';
export 'testpage_model.dart';

class TestpageWidget extends StatefulWidget {
  const TestpageWidget({Key? key}) : super(key: key);

  @override
  _TestpageWidgetState createState() => _TestpageWidgetState();
}

class _TestpageWidgetState extends State<TestpageWidget> {
  late TestpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestpageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed(
        'LoginPage',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
          ),
        },
      );
    });
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('LoginPage');
                  },
                  child: Image.network(
                    'https://media.licdn.com/dms/image/C560BAQFkNqLwUIlxQQ/company-logo_200_200/0/1669162210833?e=1684368000&v=beta&t=EXKLZIi64prGms6jAmQRu2MlgKaHnN-b2KDgiafQuPE',
                    width: 249.6,
                    height: 231.4,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 451.5,
                height: 234.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xC345D239), Colors.white],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.03, 1.01),
                child: Container(
                  width: 445.2,
                  height: 234.5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white, Color(0xC345D239)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
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
