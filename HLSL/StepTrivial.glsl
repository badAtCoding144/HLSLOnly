uniform vec2 iResolution;

void main() {

  float x = gl_FragCoord.x/iResolution.x;
  float yz =  step(x,0.5);
   
  gl_FragColor = vec4(1.0-yz,yz-1.0,yz-1.0,1.0);
 
}
//this is a trivial example of how to use the step function to colour half the texture