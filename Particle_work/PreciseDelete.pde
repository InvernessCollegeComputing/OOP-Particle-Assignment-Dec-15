class PreciseDelete {

  float RectXpos;
  float RectYpos;
  float RectWidth;
  float RectHeight;
  String RectLabel;

  PreciseDelete(float _RectXpos, float _RectYpos, float _RectWidth, float _RectHeight, String _RectLabel) {

    RectXpos = _RectXpos;
    RectYpos = _RectYpos;
    RectWidth = _RectWidth;
    RectHeight = _RectHeight;
    RectLabel = _RectLabel;
  }

  void drawRect() {

    fill(#168127); //dark green
    rect(RectXpos, RectYpos, RectWidth, RectHeight);
    fill(255);
    text(RectLabel, RectXpos + (RectWidth / 2), RectYpos + (RectHeight / 2));
  }
}