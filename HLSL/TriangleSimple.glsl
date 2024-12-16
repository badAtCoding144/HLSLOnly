uniform vec2 iResolution;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  
  vec2 ratio = vec2(iResolution.x / iResolution.y, 1.0);

  vec2 p0 = vec2(0.5, 0.75) * ratio; // apex
  vec2 p1 = vec2(0.5, 0.0) * ratio;  // apex projection
  vec2 p2 = uv * ratio;              // current point

  vec2 dir1 = p1 - p0; // perpendicular to the base
  vec2 dir2 = p2 - p0; // from apex to current point
  
  vec2 n1 = normalize(dir1);
  vec2 n2 = normalize(dir2);

  float t = dot(n1, n2);   // get cosine
  float d = dot(n1, dir2); // get distance
  
  float red = step(0.5, t);    // check angle
  red *= (1.0 - step(0.5, d)); // check distance

  gl_FragColor = vec4(red, 0.0, 0.0, 1.0);
}