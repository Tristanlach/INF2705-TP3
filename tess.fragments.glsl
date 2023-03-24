#version 410

/////////////////////////////////////////////////////////////////

in Attribs {
    vec4 couleur;
    vec2 texCoord;
} AttribsIn;

out vec4 FragColor;

void main( void )
{
   FragColor = AttribsIn.couleur;
}