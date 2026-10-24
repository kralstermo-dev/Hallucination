void mainImage(out vec4 fragcolor, in vec2 fragCoord)
{
    vec2 p = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
    float t = iTime;
    float d =  length(p);

    vec2 q = p;
    q.x += sin(p.x * 4.0 + t) * 0.18;
    q.x += cos(p.y * 3.0 - t * 0.8) * 0.18;

    float wave1 = sin(q.x * 8.0 + sin(q.y * 4.0 + t));
    float wave2 = cos(q.y * 7.0 + cos(q.x * 4.0 - t));
    float wave3 = sin(d * 12.0 - t * 2.0);

    float pattern = (wave1 + wave2 + wave3) / 3.0;

    vec3 color = 0.5 + 0.5 * cos(
        vec3(0.0, 2.0, 4.0) + pattern * 3.0 + t
    );

    float vignette = 1.0 - smoothstep(0.25, 1.5, d);
    color *= vignette;

    color += vec3(0.15, 0.8, 0.25)
        * pow(max(pattern, 0.0), 4.0);

    flagColor = vec4(color, 1.0);

}