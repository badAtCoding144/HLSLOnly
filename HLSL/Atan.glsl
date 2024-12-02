uniform vec2 iResolution;

void main() {
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    float ratio = iResolution.x / iResolution.y;

    // Adjust UV for aspect ratio and center
    vec2 centeredUV = vec2((uv.x - 0.5) * ratio, uv.y - 0.5);

    // Compute distance from the center
    float len = length(centeredUV);

    // Circular mask for the gradient (inside the circle only)
    float radius = 0.5; 
    float insideCircle = step(len, radius);

    // Calculate angle in range [0, 1], with red on the right and green on the left
    float angle = abs(atan(centeredUV.y, centeredUV.x)); // angle of the fragpos from x-axis counter clockwise also abs makes the negative or bottom half of the circle flip
    angle = (angle + 3.14159265) / 3.14159265;      // Map angle to [0, 2]
    angle = mod(angle, 1.0);                        // make it wrap [0, 1]

    // mix it
    vec3 color = mix(vec3(1.0, 0.0, 0.0), vec3(0.0, 1.0, 0.0), angle);

    // make sure we in the circle
    color *= insideCircle;

    gl_FragColor = vec4(color, 1.0);
}