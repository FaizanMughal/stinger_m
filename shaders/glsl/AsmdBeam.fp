/* https://www.shadertoy.com/view/XsXSWS */

vec2 hash( vec2 p )
{
	p = vec2( dot(p,vec2(127.1,311.7)),
			 dot(p,vec2(269.5,183.3)) );
	return -1.0 + 2.0*fract(sin(p)*43758.5453123);
}

float noise( in vec2 p )
{
	const float K1 = 0.366025404; // (sqrt(3)-1)/2;
	const float K2 = 0.211324865; // (3-sqrt(3))/6;
	vec2 i = floor( p + (p.x+p.y)*K1 );
	vec2 a = p - i + (i.x+i.y)*K2;
	vec2 o = (a.x>a.y) ? vec2(1.0,0.0) : vec2(0.0,1.0);
	vec2 b = a - o + K2;
	vec2 c = a - 1.0 + 2.0*K2;
	vec3 h = max( 0.5-vec3(dot(a,a), dot(b,b), dot(c,c) ), 0.0 );
	vec3 n = h*h*h*h*vec3( dot(a,hash(i+0.0)), dot(b,hash(i+o)), dot(c,hash(i+1.0)));
	return dot( n, vec3(70.0) );
}

float fbm(vec2 uv)
{
	float f;
	mat2 m = mat2( 1.6,  1.2, -1.2,  1.6 );
	f  = 0.5000*noise( uv ); uv = m*uv;
	f += 0.2500*noise( uv ); uv = m*uv;
	f += 0.1250*noise( uv ); uv = m*uv;
	f += 0.0625*noise( uv ); uv = m*uv;
	f = 0.5 + 0.5*f;
	return f;
}

vec4 ProcessTexel()
{
	vec2 uv = vTexCoord.st;
	uv.y = 1.0-uv.y;
	vec2 q = uv;
	q.x = abs(q.x-0.5)+0.5;
	float T3 = 1.5*timer;
	q.y -= 0.2;
	float n = fbm(q*vec2(8.,1.) - vec2(0,T3));
	float c = 1. - 15. * pow( max( 0., length(q*vec2(0.,.75) ) - n * max( 0., q.y+.25 ) ),1.5 );
	float c1 = n * c * (1.2-pow(1.1*uv.y,4.));
	c1=clamp(c1,0.,1.);
	vec3 col = vec3(c1*c1*c1*c1, 1.2*c1*c1*c1, 2.2*c1*c1);
	float a = clamp(c * (1.-pow(uv.y,3.)),0.,1.);
	return pow(getTexel(vTexCoord.st),vec4(2.))+vec4(mix(vec3(0.),col,a),0.0);
}
