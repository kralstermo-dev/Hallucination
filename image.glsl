void mainImage(out vec4 fragcolor, in vec2 fragCoord)
{
    vec2 p = (fragCoord * 2.0 - iResolution.xy) / iResolution.y;
    float t = iTime;
    float d =  length(p);

    vec2 q = p;
    q.x += sin(p.x * 4.0 + t) * 0.18;
    q.x += cos(p.y * 3.0 - t * 0.8) * 0.18;

    float wave1 = sin(q.x * 8.0 + sin(q.y * 4.0 + t));
    float wave2 = cos(q.y * 8.0 + cos(q.x * 4.0 - t));
    float wave3 = sin
}