uniform vec2 iResolution;

void main() {
 
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  
  float Red = 2.0*abs(uv.x-0.5);
  
  gl_FragColor = vec4(Red, 0.0, 0.0, 1.0);
}
//trivial function mirroring the texture using abs