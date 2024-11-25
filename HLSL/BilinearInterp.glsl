uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  
  vec3 red = vec3(1.0, 0.0, 0.0);
  vec3 black = vec3(0.0, 0.0, 0.0);
  vec3 blue = vec3(0.0, 0.0, 1.0);
  vec3 green = vec3(0.0, 1.0, 0.0);

  vec3 MixColor1 = mix(blue,green,uv.x);  
  vec3 MixColor2 = mix(red,black,uv.x);
  vec4 MixColorF = vec4(mix(MixColor2,MixColor1,uv.y),1.00);
 
  

  gl_FragColor = MixColorF;
}
