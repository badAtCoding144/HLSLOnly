uniform vec2 iResolution;
uniform sampler2D iChannel0;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy * 4.0;
  uv *= vec2(iResolution.x / iResolution.y, 1.0);  

  uv.x  = fract(uv.x);
  uv.y = fract(uv.y);
  
  
  
  gl_FragColor = texture(iChannel0, vec2(uv.x,1.0-uv.y));
}