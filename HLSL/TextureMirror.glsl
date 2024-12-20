uniform vec2 iResolution;
uniform sampler2D iChannel0;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy * 4.0;
  uv *= vec2(iResolution.x / iResolution.y, 1.0);  

  uv.x = mod(); 
  uv.y = mod();
  
  uv = fract(uv);
  
  uv = mod(uv,vec2(2.0,2.0));
  
  gl_FragColor = texture(iChannel0, 1.0 - uv);
}