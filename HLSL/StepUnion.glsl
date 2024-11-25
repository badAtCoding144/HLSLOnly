uniform vec2 iResolution;

float stepOnion(float x, float LB, float UB) {
    float r0 = 1.0 - step(LB, x);
    float r1 = step(UB, x);
    // check if the value is less than LB or greaterThan UB
    return max(r0, r1);
  
}

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  float borderWidth = 50.0;
  float normalizedBorderWidthX = borderWidth/iResolution.x;
  float normalizedBorderWidthY = borderWidth/iResolution.y;
  
 float multiplierX = stepOnion(uv.x, normalizedBorderWidthX, 1.0-normalizedBorderWidthX);
  float multiplierY = stepOnion(uv.y, normalizedBorderWidthY, 1.0-normalizedBorderWidthY);
  float multiplier = max(multiplierX,multiplierY);
  uv = uv*multiplier;
  
  gl_FragColor = vec4(uv.x, uv.y, 0.0, 1.0);
}

//an example of how step union can be made an implemented to create a border