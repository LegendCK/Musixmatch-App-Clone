import '/components/music_card_widget.dart';
import '/components/music_list_item_widget.dart';
import '/components/playlist_item_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'music_page_widget.dart' show MusicPageWidget;
import 'package:flutter/material.dart';

class MusicPageModel extends FlutterFlowModel<MusicPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for MusicCard component.
  late MusicCardModel musicCardModel1;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel2;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel3;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel4;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel5;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel6;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel7;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel8;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel9;
  // Model for MusicCard component.
  late MusicCardModel musicCardModel10;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel1;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel2;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel3;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel4;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel5;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel6;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel7;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel8;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel9;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel10;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel11;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel12;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel13;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel14;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel15;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel16;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel17;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel18;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel19;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel20;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel21;
  // Model for musicListItem component.
  late MusicListItemModel musicListItemModel22;
  // Model for playlistItemCard component.
  late PlaylistItemCardModel playlistItemCardModel1;
  // Model for playlistItemCard component.
  late PlaylistItemCardModel playlistItemCardModel2;

  @override
  void initState(BuildContext context) {
    musicCardModel1 = createModel(context, () => MusicCardModel());
    musicCardModel2 = createModel(context, () => MusicCardModel());
    musicCardModel3 = createModel(context, () => MusicCardModel());
    musicCardModel4 = createModel(context, () => MusicCardModel());
    musicCardModel5 = createModel(context, () => MusicCardModel());
    musicCardModel6 = createModel(context, () => MusicCardModel());
    musicCardModel7 = createModel(context, () => MusicCardModel());
    musicCardModel8 = createModel(context, () => MusicCardModel());
    musicCardModel9 = createModel(context, () => MusicCardModel());
    musicCardModel10 = createModel(context, () => MusicCardModel());
    musicListItemModel1 = createModel(context, () => MusicListItemModel());
    musicListItemModel2 = createModel(context, () => MusicListItemModel());
    musicListItemModel3 = createModel(context, () => MusicListItemModel());
    musicListItemModel4 = createModel(context, () => MusicListItemModel());
    musicListItemModel5 = createModel(context, () => MusicListItemModel());
    musicListItemModel6 = createModel(context, () => MusicListItemModel());
    musicListItemModel7 = createModel(context, () => MusicListItemModel());
    musicListItemModel8 = createModel(context, () => MusicListItemModel());
    musicListItemModel9 = createModel(context, () => MusicListItemModel());
    musicListItemModel10 = createModel(context, () => MusicListItemModel());
    musicListItemModel11 = createModel(context, () => MusicListItemModel());
    musicListItemModel12 = createModel(context, () => MusicListItemModel());
    musicListItemModel13 = createModel(context, () => MusicListItemModel());
    musicListItemModel14 = createModel(context, () => MusicListItemModel());
    musicListItemModel15 = createModel(context, () => MusicListItemModel());
    musicListItemModel16 = createModel(context, () => MusicListItemModel());
    musicListItemModel17 = createModel(context, () => MusicListItemModel());
    musicListItemModel18 = createModel(context, () => MusicListItemModel());
    musicListItemModel19 = createModel(context, () => MusicListItemModel());
    musicListItemModel20 = createModel(context, () => MusicListItemModel());
    musicListItemModel21 = createModel(context, () => MusicListItemModel());
    musicListItemModel22 = createModel(context, () => MusicListItemModel());
    playlistItemCardModel1 =
        createModel(context, () => PlaylistItemCardModel());
    playlistItemCardModel2 =
        createModel(context, () => PlaylistItemCardModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    musicCardModel1.dispose();
    musicCardModel2.dispose();
    musicCardModel3.dispose();
    musicCardModel4.dispose();
    musicCardModel5.dispose();
    musicCardModel6.dispose();
    musicCardModel7.dispose();
    musicCardModel8.dispose();
    musicCardModel9.dispose();
    musicCardModel10.dispose();
    musicListItemModel1.dispose();
    musicListItemModel2.dispose();
    musicListItemModel3.dispose();
    musicListItemModel4.dispose();
    musicListItemModel5.dispose();
    musicListItemModel6.dispose();
    musicListItemModel7.dispose();
    musicListItemModel8.dispose();
    musicListItemModel9.dispose();
    musicListItemModel10.dispose();
    musicListItemModel11.dispose();
    musicListItemModel12.dispose();
    musicListItemModel13.dispose();
    musicListItemModel14.dispose();
    musicListItemModel15.dispose();
    musicListItemModel16.dispose();
    musicListItemModel17.dispose();
    musicListItemModel18.dispose();
    musicListItemModel19.dispose();
    musicListItemModel20.dispose();
    musicListItemModel21.dispose();
    musicListItemModel22.dispose();
    playlistItemCardModel1.dispose();
    playlistItemCardModel2.dispose();
  }
}
