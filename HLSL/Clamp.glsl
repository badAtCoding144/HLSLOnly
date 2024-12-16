uniform vec2 iResolution; // Viewport resolution

void main() {
    // Calculate the UV coordinates from the fragment position
    vec2 uv = gl_FragCoord.xy / iResolution.xy;
    
    // Calculate the diagonal line's equation (y = x)
    float diagonal_line = uv.x - uv.y;
    
    // Limit the line to values between 0.25 and 0.75 in Y coordinate
    float limited_y = smoothstep(0.25, 0.75, uv.y);
    
    // Calculate the line's width (0.2 in normalized coordinates)
    float line_width = smoothstep(-0.1, 0.1, diagonal_line);
    
    // Combine the limited Y and line width to create the final line
    float line = limited_y * line_width;
    
    // Color the line (1.0, 0.3, 0.3)
    vec3 line_color = vec3(1.0, 0.3, 0.3);
    
    // Output the final fragment color
    gl_FragColor = vec4(line_color, 1.0) * line;
}