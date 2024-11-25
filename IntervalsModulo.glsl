uniform vec2 iResolution;

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  
  uv *= 9.0;
  float wholeX = uv.x;
  float x = fract(uv.x);
 
  float IsRedNotice = step(0.5, x);

  wholeX = mod(wholeX, 3.0);
  float IsBlackNotice = step(1.5,wholeX - x);


  gl_FragColor = vec4(IsRedNotice-IsBlackNotice, 0.0, 0.0, 1.0);
}

//this program colours 9 red and black bars across the texture and colours every 3rd red bar as black as well