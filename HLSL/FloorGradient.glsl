uniform vec2 iResolution;

vec3 palette[5] = vec3[5] (
  vec3(1.0, 0.0, 0.0),
  vec3(0.0, 1.0, 0.0),
  vec3(0.0, 0.0, 1.0),
  vec3(1.0, 1.0, 0.0),
  vec3(0.0, 0.0, 0.0)
);

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  uv = uv * 4;

  float colorSection = floor(uv.x);

  vec3 CurrentColor = mix(pallete[colorSection],pallete[colorSection+1],fract(uv.x));
  
  gl_FragColor = CurrentColor;
}
