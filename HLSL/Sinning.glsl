uniform vec2 iResolution;

const float PI = 3.14;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  float ratio = iResolution.x / iResolution.y;

  vec2 centeredUV = vec2((uv.x-0.5)*ratio,uv.y-0.5);

  float len = length(centeredUV);

  float IsRed = sin(len*10.0*PI);

  vec3 color = mix(vec3(0.0,0.0,0.0),vec3(1.0,0.0,0.0),IsRed);
  
  gl_FragColor = vec4(color,1.0);
}
//higher res wave from the center of the texture