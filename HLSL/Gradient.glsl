uniform vec2 iResolution;
uniform float iTime;

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = 10.0*(gl_FragCoord.xy / iResolution.xy);
  
  float intensity = ceil(uv.x)/10.0;
  
  gl_FragColor = vec4(intensity, 0.0, 0.0, 1.0);
}
//this creates a gradient effect from left to right with 10 different values in the gradient