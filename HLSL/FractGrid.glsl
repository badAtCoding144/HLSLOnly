float stepOnion(float x, float LB, float UB) {
    float r0 = 1.0 - step(LB, x);
    float r1 = step(UB, x);
    // check if the value is less than LB or greaterThan UB
    return max(r0, r1);
  
}

void main() {
  vec2 fragPos = gl_FragCoord.xy;
  float height = 60.0;
  float width = 60.0;

  float XPosi = fract(fragPos.x/width);
  float YPosi = fract(fragPos.y/height);

  float inXMargin = stepOnion(XPosi,10.0/70.0,1.0);
  float inYMargin = stepOnion(YPosi,10.0/70.0,1.0);

  float shiddy = max(inXMargin,inYMargin);
  
  gl_FragColor = vec4(1.0-shiddy, 0.0, 0.0, 1.0);
}
float stepOnion(float x, float LB, float UB) {
    float r0 = 1.0 - step(LB, x);
    float r1 = step(UB, x);
    // check if the value is less than LB or greaterThan UB
    return max(r0, r1);
  
}

void main() {
  vec2 fragPos = gl_FragCoord.xy;
  float height = 60.0;
  float width = 60.0;

  float XPosi = fract(fragPos.x/width);
  float YPosi = fract(fragPos.y/height);

  float inXMargin = stepOnion(XPosi,10.0/70.0,1.0);
  float inYMargin = stepOnion(YPosi,10.0/70.0,1.0);

  float shiddy = max(inXMargin,inYMargin);
  
  gl_FragColor = vec4(1.0-shiddy, 0.0, 0.0, 1.0);
}
//this program creates a grid with cells of pixel height and width 50 and pixel width 10 borders.