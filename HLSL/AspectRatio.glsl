uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  float ratio = iResolution.x/iResolution.y;
  float Len = length(vec2((uv.x-0.5)*ratio,uv.y-0.5));

  
  float Dist = distance(Len,0.125);
  float IsCloseEnough = step(Dist,0.125);
  
  
  gl_FragColor = vec4(IsCloseEnough, 0.0, 0.0, 1.0);
}
//makes a dot in the centre of the screen and then adjusts it for the aspect ratio of the resolution, for texture on quads