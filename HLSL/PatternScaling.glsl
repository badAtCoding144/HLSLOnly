uniform vec2 iResolution;

float pattern(vec2 uv) {
  uv = uv * 2.0 - 1.0;
  float t = pow(uv.x * uv.x, 0.3) + pow(uv.y * uv.y, 0.3) - 1.0;
  return step(0.0, t) * t * 10.0 + step(0.2, t);
}

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  vec2 UV = fract(uv*vec2(5,3));
  gl_FragColor = vec4(pattern(UV), 0.0, 0.0, 1.0);
}
//example of using fract to scale a pattern