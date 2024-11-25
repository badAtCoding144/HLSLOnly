uniform vec2 iResolution;

void main() {
  // Normalized pixel coordinates (from 0 to 1)
  vec2 uv = gl_FragCoord.xy / iResolution.xy;

  float lowerBound = 0.25 ;
  float upperBound = 0.75 ;

    float isLower = step(uv.x, lowerBound);  
    float isUpper = step(upperBound, uv.x); 
    float isInRange = max(isLower, isUpper); 

  
    vec3 color = vec3(1.0, 0.3, 0.3) * isInRange;

    gl_FragColor = vec4(color, 1.0);
  
}
//this is an example of creating an interval in glsl using step and max functions to identify if normalized coords are in a certain range