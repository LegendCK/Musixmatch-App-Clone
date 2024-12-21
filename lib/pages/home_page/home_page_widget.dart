import '/components/item_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Home',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: const Color(0xFFFE6D61),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 8.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.settings_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    wrapWithModel(
                      model: _model.itemCardModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemCardWidget(
                        title: 'For artists',
                        image: random_data.randomImageUrl(
                          0,
                          0,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemCardModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemCardWidget(
                        title: 'Try Performer tags!',
                        image: random_data.randomImageUrl(
                          0,
                          0,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemCardModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemCardWidget(
                        title: 'Hurry up and save 50% on Premium',
                        image: random_data.randomImageUrl(
                          0,
                          0,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemCardModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemCardWidget(
                        title: 'Attend the Academeny and graduate',
                        image: random_data.randomImageUrl(
                          0,
                          0,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemCardModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemCardWidget(
                        title: 'Podcasts available now!',
                        image: random_data.randomImageUrl(
                          0,
                          0,
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.itemCardModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: ItemCardWidget(
                        title: 'Explore our amazing community',
                        image: random_data.randomImageUrl(
                          0,
                          0,
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
