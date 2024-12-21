import '/components/item_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for itemCard component.
  late ItemCardModel itemCardModel1;
  // Model for itemCard component.
  late ItemCardModel itemCardModel2;
  // Model for itemCard component.
  late ItemCardModel itemCardModel3;
  // Model for itemCard component.
  late ItemCardModel itemCardModel4;
  // Model for itemCard component.
  late ItemCardModel itemCardModel5;
  // Model for itemCard component.
  late ItemCardModel itemCardModel6;

  @override
  void initState(BuildContext context) {
    itemCardModel1 = createModel(context, () => ItemCardModel());
    itemCardModel2 = createModel(context, () => ItemCardModel());
    itemCardModel3 = createModel(context, () => ItemCardModel());
    itemCardModel4 = createModel(context, () => ItemCardModel());
    itemCardModel5 = createModel(context, () => ItemCardModel());
    itemCardModel6 = createModel(context, () => ItemCardModel());
  }

  @override
  void dispose() {
    itemCardModel1.dispose();
    itemCardModel2.dispose();
    itemCardModel3.dispose();
    itemCardModel4.dispose();
    itemCardModel5.dispose();
    itemCardModel6.dispose();
  }
}
