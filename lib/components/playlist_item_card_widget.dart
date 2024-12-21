import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'playlist_item_card_model.dart';
export 'playlist_item_card_model.dart';

class PlaylistItemCardWidget extends StatefulWidget {
  const PlaylistItemCardWidget({
    super.key,
    required this.artistName,
    required this.leadingIcon,
  });

  final String? artistName;
  final Widget? leadingIcon;

  @override
  State<PlaylistItemCardWidget> createState() => _PlaylistItemCardWidgetState();
}

class _PlaylistItemCardWidgetState extends State<PlaylistItemCardWidget> {
  late PlaylistItemCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlaylistItemCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 52.0,
            height: 52.0,
            decoration: const BoxDecoration(
              color: Color(0xFFB2B9C2),
              shape: BoxShape.circle,
            ),
            child: widget.leadingIcon!,
          ),
          Expanded(
            child: Text(
              valueOrDefault<String>(
                widget.artistName,
                'artistName',
              ),
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Inter',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 40.0,
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xFFB2B9C2),
              size: 24.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
        ].divide(const SizedBox(width: 10.0)),
      ),
    );
  }
}
