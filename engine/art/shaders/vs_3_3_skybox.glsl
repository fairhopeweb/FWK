uniform mat4 u_mvp;


in vec3 att_position;
out vec3 v_direction;


void main() {
    vec4 position = u_mvp * vec4(att_position, 0.0);
    gl_Position = position.xyww;
    v_direction = att_position;
}