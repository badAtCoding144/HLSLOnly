uniform vec2 iResolution;

void main() {

  float x = gl_FragCoord.x/iResolution.x;
  float yz =  1.0 - step(x,0.5) ;
   
  gl_FragColor = vec4(1.0-yz,yz-1.0,yz-1.0,1.0);
 
}
//this colours in the other half of the tex using step and the fact that the coordinates are normalized (clamped to 0.0 and 1.0)