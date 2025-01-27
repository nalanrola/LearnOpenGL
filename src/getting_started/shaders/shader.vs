#version 330 core
layout (location = 0) in vec3 aPos; // 位置变量的属性位置值为0
uniform float xoffset;//三角形水平偏移
out vec4 vertexColor; // 为片段着色器指定一个颜色输出

void main()
{
    gl_Position = vec4(aPos.x+xoffset,aPos.yz, 1.0); // 注意我们如何把一个vec3作为vec4的构造器的参数
    vertexColor = vec4(0.5, 0.0, 0.0, 1.0); // 把输出变量设置为暗红色
}