uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;

  float Len = length(vec2(uv.x-0.5,uv.y-0.5));
  
  float Dist = distance(Len,0.125);
  float IsCloseEnough = step(Dist,0.125);
  
  gl_FragColor = vec4(IsCloseEnough, 0.0, 0.0, 1.0);
}

//this is a function to draw a red circle in the middle of the texture with a radius of 0.25 if the texture ranges are normalized