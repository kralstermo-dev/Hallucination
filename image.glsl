void mainImage(out vec4 fragcolor, in vec2 fragCoord)
{
    vec2 p = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
    float t = iTime;
    float d =  length(p);

    vec2 q = p;
    q.x += sin(p.x * 4.0 + t) * 0.18;
    q.x += cos(p.y * 3.0 - t * 0.8) * 0.18;

    float.wave
}