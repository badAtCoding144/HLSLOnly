uniform vec2 iResolution;
uniform sampler2D iChannel0;

void main() {
    
    vec2 uv = fract(gl_FragCoord.xy / iResolution.xy);

    float ratio = iResolution.x/iResolution.y;

    uv = fract(vec2(uv.x*ratio, uv.y));
    
    vec4 tex_color = texture(iChannel0, uv);
    
    gl_FragColor = tex_color;
}
//my solution for texture that wraps

//their solution

uniform vec2 iResolution;
uniform sampler2D iChannel0;

void main() {
  vec2 uv = gl_FragCoord.xy / iResolution.xy;
  vec2 ratio = vec2(iResolution.x / iResolution.y, 1.0);  

  gl_FragColor = texture(iChannel0, fract(uv * ratio));
}