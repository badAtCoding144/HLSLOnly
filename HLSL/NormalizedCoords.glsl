uniform vec2 iResolution;

void main() {
 vec2 normalised = gl_FragCoord.xy/iResolution.xy;
  
  gl_FragColor = vec4(normalised.x, normalised.y, 0.0, 1.0);
}
//this program normalizes the fragcoord and then outputs a color based on the position of the fragment