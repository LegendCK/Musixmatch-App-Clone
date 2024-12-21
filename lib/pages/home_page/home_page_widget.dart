import '/components/item_card_widget.dart';
import '/components/music_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
          child: SingleChildScrollView(
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The FloatingLyrics',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          'Get lyrics instantly on top of Youtube, Spotify, Play Music and more.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1727793579362-c39e8389258e?crop=entropy&cs=srgb&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxseXJpY3N8ZW58MHx8fHwxNzM0NzU5NjkwfDA&ixlib=rb-4.0.3&q=85',
                            width: double.infinity,
                            height: 150.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Container(
                            width: 150.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('OpenFlaotingLyricsButton pressed ...');
                                },
                                text: 'Open FloatingLyrics',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: const Color(0xFFFE6D61),
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top 50 India',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFEBEC),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.trending_up,
                                color: Color(0xFFFE6D61),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              wrapWithModel(
                                model: _model.musicCardModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('OpenFlaotingLyricsButton pressed ...');
                              },
                              text: 'View all',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: const Color(0xFFFE6D61),
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hot Weekly Songs',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFEBEC),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.trending_up,
                                color: Color(0xFFFE6D61),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              wrapWithModel(
                                model: _model.musicCardModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel10,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel11,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel12,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('OpenFlaotingLyricsButton pressed ...');
                              },
                              text: 'View all',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: const Color(0xFFFE6D61),
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Albums and Singles',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFEBEC),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.fiber_new,
                                color: Color(0xFFFE6D61),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              wrapWithModel(
                                model: _model.musicCardModel13,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel14,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel15,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel16,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel17,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel18,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('OpenFlaotingLyricsButton pressed ...');
                              },
                              text: 'View all',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: const Color(0xFFFE6D61),
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Lyrics translated in more ...',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFEBEC),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.fiber_new,
                                color: Color(0xFFFE6D61),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              wrapWithModel(
                                model: _model.musicCardModel19,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel20,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel21,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel22,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel23,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.musicCardModel24,
                                updateCallback: () => safeSetState(() {}),
                                child: MusicCardWidget(
                                  musicCoverImage: random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  musicTitle:
                                      random_data.randomName(true, false),
                                  musicArtist:
                                      random_data.randomName(true, false),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(1.0, 0.0),
                          child: Container(
                            width: 60.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('OpenFlaotingLyricsButton pressed ...');
                              },
                              text: 'View all',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: const Color(0xFFFE6D61),
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 20.0)).around(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
