uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;

  float red = step(uv.y,uv.x+0.5);
  float red2 = step(uv.x, uv.y+0.5);
  float red3 = step(1.0-uv.x,uv.y+0.5);
  float red4 = step(uv.x,1.5-uv.y); 
  
  float truecolor = min(min(red,red2),min(red3,red4));
  
  gl_FragColor = vec4(truecolor, 0.0, 0.0, 1.0);
}

//makes a rhombus alternate solution to the abs value one