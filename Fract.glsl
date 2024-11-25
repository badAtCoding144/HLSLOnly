uniform vec2 iResolution;


void main() {
 
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    float interval = 0.05;

  
    float currentInterval = uv.x / interval;
    currentInterval = floor(currentInterval);

  
    float isOdd = currentInterval - 2.0 * floor(currentInterval * 0.5);

 
    gl_FragColor = vec4(isOdd, 0.0, 0.0, 1.0);
}

//example of how fract can be used to divide space into intervals 
//fract() returns the fractional part of x . This is calculated as x - floor(x) 