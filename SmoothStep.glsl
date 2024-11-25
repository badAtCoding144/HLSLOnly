uniform vec2 iResolution;

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  vec4 Red = vec4(1.0,0.0,0.0,1.0);
  vec4 Green = vec4(0.0,1.0,0.0,1.0);

  float smoothInterp = smoothstep(0.25,0.75,uv.x);
  vec4 MixedColor = mix(Red,Green,smoothInterp);
  
  gl_FragColor = MixedColor;
}
//this does a smooth interpolation between the two borders specified (basically step union with interpolation between the UB and LB)