uniform vec2 iResolution;
const float PI = 3.14;

bool isInsideTriangle(vec2 point) {
    // Apex point
    vec2 apex = vec2(0.5, 0.75);
    
    // Triangle base angle 120 degrees
    float height = 0.5; // Relative to screen height
    float baseAngle = 120.0 * PI / 180.0;
    
    // Calculate base vertices
    float halfBase = height * tan(baseAngle / 2.0);
    vec2 leftBase = vec2(apex.x - halfBase, apex.y - height);
    vec2 rightBase = vec2(apex.x + halfBase, apex.y - height);
    
    // Barycentric coordinate technique
    float area = 0.5 * abs((leftBase.x - apex.x) * (rightBase.y - apex.y) - 
                           (rightBase.x - apex.x) * (leftBase.y - apex.y));
    
    float s1 = 0.5 * abs((apex.x - point.x) * (leftBase.y - point.y) - 
                         (leftBase.x - point.x) * (apex.y - point.y)) / area;
    
    float s2 = 0.5 * abs((leftBase.x - point.x) * (rightBase.y - point.y) - 
                         (rightBase.x - point.x) * (leftBase.y - point.y)) / area;
    
    float s3 = 0.5 * abs((rightBase.x - point.x) * (apex.y - point.y) - 
                         (apex.x - point.x) * (rightBase.y - point.y)) / area;
    
    return (s1 + s2 + s3) <= 1.0001;
}

void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    
    // Adjust for aspect ratio
    float ratio = iResolution.x / iResolution.y;
    uv.x = (uv.x - 0.5) * ratio + 0.5;
    
    vec3 color = isInsideTriangle(uv) ? vec3(1.0, 0.0, 0.0) : vec3(0.0);
    
    gl_FragColor = vec4(color, 1.0);
}