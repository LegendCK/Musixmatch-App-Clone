import '/components/music_card_widget.dart';
import '/components/music_list_item_widget.dart';
import '/components/playlist_item_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'music_page_model.dart';
export 'music_page_model.dart';

class MusicPageWidget extends StatefulWidget {
  const MusicPageWidget({super.key});

  @override
  State<MusicPageWidget> createState() => _MusicPageWidgetState();
}

class _MusicPageWidgetState extends State<MusicPageWidget>
    with TickerProviderStateMixin {
  late MusicPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('FloatingActionButton pressed ...');
          },
          backgroundColor: const Color(0xFFFE6D61),
          elevation: 8.0,
          child: Icon(
            Icons.shuffle,
            color: FlutterFlowTheme.of(context).info,
            size: 24.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Music',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: const Color(0xFFFE6D61),
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.diamond_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.music_video,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
              ),
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
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: const Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryText,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Inter Tight',
                                  letterSpacing: 0.0,
                                ),
                        indicatorColor: FlutterFlowTheme.of(context).primary,
                        tabs: const [
                          Tab(
                            text: 'Albums',
                          ),
                          Tab(
                            text: 'Artists',
                          ),
                          Tab(
                            text: 'Tracks',
                          ),
                          Tab(
                            text: 'Playlists',
                          ),
                          Tab(
                            text: 'Genres',
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [
                            () async {},
                            () async {},
                            () async {},
                            () async {},
                            () async {}
                          ][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ListView(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 190.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        wrapWithModel(
                                          model: _model.musicCardModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.musicCardModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 190.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        wrapWithModel(
                                          model: _model.musicCardModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.musicCardModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 190.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        wrapWithModel(
                                          model: _model.musicCardModel5,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.musicCardModel6,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 190.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        wrapWithModel(
                                          model: _model.musicCardModel7,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.musicCardModel8,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100.0,
                                    height: 190.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        wrapWithModel(
                                          model: _model.musicCardModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.musicCardModel10,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: MusicCardWidget(
                                            musicCoverImage:
                                                random_data.randomImageUrl(
                                              0,
                                              0,
                                            ),
                                            musicTitle: random_data.randomName(
                                                true, false),
                                            musicArtist: random_data.randomName(
                                                true, false),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.musicListItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 10.0)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.musicListItemModel12,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel13,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel14,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel15,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel16,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel17,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel18,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel19,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel20,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel21,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicListItemModel22,
                                      updateCallback: () => safeSetState(() {}),
                                      child: MusicListItemWidget(
                                        artistName:
                                            random_data.randomName(true, true),
                                        songs:
                                            random_data.randomName(true, true),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 10.0)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.playlistItemCardModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const PlaylistItemCardWidget(
                                        artistName: 'Recently added',
                                        leadingIcon: Icon(
                                          Icons.playlist_add,
                                        ),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.playlistItemCardModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const PlaylistItemCardWidget(
                                        artistName: 'Playlist',
                                        leadingIcon: Icon(
                                          Icons.playlist_play,
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 10.0)),
                                ),
                              ),
                            ],
                          ),
                          const Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
