import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_card_model.dart';
export 'item_card_model.dart';

class ItemCardWidget extends StatefulWidget {
  const ItemCardWidget({
    super.key,
    required this.title,
    required this.image,
  });

  final String? title;
  final String? image;

  @override
  State<ItemCardWidget> createState() => _ItemCardWidgetState();
}

class _ItemCardWidgetState extends State<ItemCardWidget> {
  late ItemCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
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
            valueOrDefault<String>(
              widget.title,
              'title',
            ),
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Inter Tight',
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.image!,
              width: 300.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
