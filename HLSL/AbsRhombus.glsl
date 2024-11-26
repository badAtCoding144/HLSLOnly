uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  uv -= 0.5;

  float t = abs(uv.x) + abs(uv.y);
  t = 1.0 - step(0.5, t);
  
  gl_FragColor = vec4(t, 0.0, 0.0, 1.0);
}
//makes a rhombus using the absolute value of the line representing the top left border