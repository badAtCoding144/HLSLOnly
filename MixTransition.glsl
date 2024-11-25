uniform vec2 iResolution;

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  
  vec3 color2 = vec3(0.38, 0.12, 0.93);
  vec3 color1 = vec3(1.00, 0.30, 0.30);

  float transitionStart = step(0.25,uv.x);

  vec4 MixedColor = vec4(mix(color1,color2,uv.x-0.25),1.0);  

  gl_FragColor = vec4(color1*(1.0-transitionStart),1.0) + transitionStart*MixedColor;
}

//this shader generates a transisioning colour from left to right with the transition starting a quarter way from x = 0