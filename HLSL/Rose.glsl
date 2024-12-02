uniform vec2 iResolution;

const float PI = 3.14;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  float ratio = iResolution.x / iResolution.y;

  vec2 centeredUV = vec2((uv.x-0.5)*ratio,uv.y-0.5);

  float len = length(centeredUV);

  float len5 = len*5.0;
  float section = len - fract(len5);
  
  float IsRed = mod(section,2.0);

  vec3 color = mix(vec3(0.0,0.0,0.0),vec3(1.0,0.0,0.0),fract(len5));
  
  gl_FragColor = vec4(color,1.0);
}

//this thing creates quite a cool pattern