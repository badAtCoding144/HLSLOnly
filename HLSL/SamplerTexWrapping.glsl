uniform vec2 iResolution;
uniform sampler2D iChannel0;

void main() {
    // Calculate the UV coordinates with texture repetition
    vec2 uv = fract(gl_FragCoord.xy / iResolution.xy);
    
    // Sample the texture at the calculated UV coordinates
    vec4 tex_color = texture(iChannel0, uv);
    
    // Output the final fragment color
    gl_FragColor = tex_color;
}