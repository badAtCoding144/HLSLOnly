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
  uv = uv * 4.0;

  int colorSection = int(floor(uv.x));

  vec3 CurrentColor = mix(palette[colorSection],palette[colorSection+1],fract(uv.x));
  
  gl_FragColor = vec4(CurrentColor,1.0);
}
//this makes a texture that is a gradient of 5 colours where each colour is an int across the X axis.