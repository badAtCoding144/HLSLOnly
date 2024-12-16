uniform vec2 iResolution;
const float PI = 3.14;

void main() {
    // Normalize coordinates
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    
    // Adjust for aspect ratio
    float ratio = iResolution.x / iResolution.y;
    vec2 UV = vec2((uv.x - 0.5) * ratio, uv.y - 0.5);
    
    // Calculate distance from center and create sine pattern
    float dist = length(UV);
    
    // 5 periods of sine based on distance
    float sineVal = sin(dist * PI * 10.0);
    
    // Remap sine from [-1,1] to [0,1]
    float redIntensity = (sineVal + 1.0) * 0.5;
    
    // Mix between black and red based on sine value
    vec3 color = mix(vec3(0.0, 0.0, 0.0), vec3(1.0, 0.0, 0.0), redIntensity);
    
    gl_FragColor = vec4(color, 1.0);
}