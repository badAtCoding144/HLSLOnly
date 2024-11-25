varying vec4 color;

void main() {
  gl_FragColor = color.zyxw;
}
//trivial example of swizzling