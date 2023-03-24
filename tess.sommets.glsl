#version 410

/////////////////////////////////////////////////////////////////

layout(location=0) in vec4 Vertex;
layout(location=8) in vec4 TexCoord;

uniform mat4 matrModel;
uniform mat4 matrVisu;
uniform mat4 matrProj;

out Attribs {
    vec4 couleur;
    vec2 texCoord;
} AttribsOut;

void main( void )
{
    gl_Position = matrProj * matrVisu * matrModel * Vertex;
    AttribsOut.couleur = vec4(0.5, 0.5, 0.5, 1);
    AttribsOut.texCoord = TexCoord.st;
}
