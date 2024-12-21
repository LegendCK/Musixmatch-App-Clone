import '/components/contribute_page_item_card_widget.dart';
import '/components/profile_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contribute_page_widget.dart' show ContributePageWidget;
import 'package:flutter/material.dart';

class ContributePageModel extends FlutterFlowModel<ContributePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ProfileImage component.
  late ProfileImageModel profileImageModel;
  // Model for ContributePageItemCard component.
  late ContributePageItemCardModel contributePageItemCardModel;

  @override
  void initState(BuildContext context) {
    profileImageModel = createModel(context, () => ProfileImageModel());
    contributePageItemCardModel =
        createModel(context, () => ContributePageItemCardModel());
  }

  @override
  void dispose() {
    profileImageModel.dispose();
    contributePageItemCardModel.dispose();
  }
}
