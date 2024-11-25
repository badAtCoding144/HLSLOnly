void main() {
  vec4 blueChannel = vec4(0.0, 0.0, 0.75, 0.0);
  vec4 redChannel = vec4(0.5, 0.0, 0.0, 0.0);
  vec4 alphaChannel = vec4(0.0, 0.0, 0.0, 1.0);
  
  gl_FragColor = blueChannel + redChannel + alphaChannel;
}
//adds three channels and outputs the result