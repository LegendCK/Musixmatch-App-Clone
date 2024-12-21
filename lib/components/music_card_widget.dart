import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'music_card_model.dart';
export 'music_card_model.dart';

class MusicCardWidget extends StatefulWidget {
  const MusicCardWidget({
    super.key,
    required this.musicCoverImage,
    required this.musicTitle,
    required this.musicArtist,
  });

  final String? musicCoverImage;
  final String? musicTitle;
  final String? musicArtist;

  @override
  State<MusicCardWidget> createState() => _MusicCardWidgetState();
}

class _MusicCardWidgetState extends State<MusicCardWidget> {
  late MusicCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              widget.musicCoverImage!,
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.musicTitle,
              'musicTitle',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            valueOrDefault<String>(
              widget.musicArtist,
              'musicArtist',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
