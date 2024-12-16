uniform vec2 iResolution;


void main() {
    // Normalize coordinates to [0, 1].
    vec2 uv = gl_FragCoord.xy / iResolution.xy;

    // Line parameters.
    float lineWidth = 0.2;
    vec3 lineColor = vec3(1.0, 0.3, 0.3);

    // Distance to the diagonal line (y = x).
    float distanceToLine = abs(uv.y - uv.x);

    // Check if the Y coordinate is in the range [0.25, 0.75].
    float inRange = step(0.25, uv.y) * step(uv.y, 0.75);

    // Calculate alpha for the line based on its width.
    float alpha = max(0.0, 1.0 - distanceToLine / (lineWidth * 0.5));

    // Combine the line color and alpha with the range mask.
    vec3 color = lineColor * alpha * inRange;

    // Output final color.
    gl_FragColor = vec4(color, 1.0);
}